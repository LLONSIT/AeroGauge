BASENAME  = AeroGauge
VERSION  := us

BUILD_DIR = build
ASM_DIRS  = asm asm/data
BIN_DIRS  = assets
SRC_DIR   = src 
CORES =  
SRC_DIRS  = $(SRC_DIR)

TOOLS_DIR := tools

S_FILES   = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES   = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
H_FILES   = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.h))
BIN_FILES = $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))

O_FILES := $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(BIN_FILES),$(BUILD_DIR)/$(file).o)


TARGET = $(BUILD_DIR)/$(BASENAME).$(VERSION)
LD_SCRIPT = $(BASENAME).ld

CROSS = mips64-elf-
AS = mips-linux-gnu-as
CPP = mips64-elf-cpp
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy
PYTHON = python3

OBJCOPYFLAGS = -O binary


CC := $(TOOLS_DIR)/ido/cc

OPT_FLAGS := -O2 -g0 #confirmed
MIPSISET := -mips2 -32


INCLUDE_CFLAGS := -I . -I include -I include/libc -I include/PR

ASFLAGS = -EB -mtune=vr4300 -march=vr4300 -mabi=32 -I include
LD_SCRIPT = AeroGauge.ld
# Files requiring pre/post-processing
GREP := grep -rl
GLOBAL_ASM_C_FILES := $(shell $(GREP) GLOBAL_ASM $(SRC_DIR) </dev/null 2>/dev/null)
GLOBAL_ASM_O_FILES := $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file).o)


CFLAGS :=-Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -Xfullwarn -signed -O2 -nostdinc -I include/libc -DTARGET_N64 -I include -I build/us -I include/PR -I src -I . -mips2 -32 -DF3DEX_GBI -D_LANGUAGE_C -o
CFLAGS += -DF3DEX_GBI -D_LANGUAGE_C -DTARGET_N64
# ignore compiler warnings about anonymous structs
CFLAGS += -mips2 -32
CFLAGS += $(INCLUDE_CFLAGS)

ifeq ($(VERSION),us)
CFLAGS += -DVERSION_US
endif
ifeq ($(VERSION),eu)
CFLAGS += -DVERSION_EU
endif

LDFLAGS = -T $(LD_SCRIPT) -Map $(TARGET).map -T undefined_syms_auto.txt -T undefined_funcs_auto.txt  --no-check-sections

ASM_PROCESSOR_DIR := $(TOOLS_DIR)/asm-processor





### Targets

default: all

all: dirs $(TARGET).z64 verify

dirs:
	$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(BIN_DIRS),$(shell mkdir -p $(BUILD_DIR)/$(dir)))

check: .baserom.$(VERSION).ok

verify: $(TARGET).z64
	@sha1sum -c AeroGauge.us.sha1

split:
	$(PYTHON) $(TOOLS_DIR)/splat/split.py $(BASENAME).$(VERSION).yaml

clean:
	rm -rf build
	#rm -f *auto.txt

### Recipes

.baserom.$(VERSION).ok: baserom.$(VERSION).z64
	cp -a build expected/build # for asm differ 
	@sha1sum -c .AeroGauge.sha1

$(TARGET).elf: $(O_FILES) $(LANG_O_FILES)
	@$(LD) $(LDFLAGS) -o $@

#TODO remove this pitiful way to compile C files
A = $(PYTHON) tools/asm-processor/build.py tools/ido/cc -- mips-linux-gnu-as -march=vr4300 -mabi=32 -I include -I build/us --defsym F3DEX_GBI=1 -- -c -Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -Xfullwarn -signed -O2 -g0 -nostdinc -I include/libc -DTARGET_N64 -I include -I build/us -I include/PR -I src -I . -mips2 -32 -DF3DEX_GBI -D_LANGUAGE_C -o


ifndef PERMUTER
$(GLOBAL_ASM_O_FILES): $(BUILD_DIR)/%.c.o: %.c
	$(A)  $@ $<

endif

# non asm-processor recipe
$(BUILD_DIR)/%.c.o: %.c
	$(CC) -c $(CFLAGS) $(OPT_FLAGS) $(MIPSISET) -o $@ $<



		
	
$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) $(OBJCOPYFLAGS) $< $@

$(TARGET).z64: $(TARGET).bin
	@cp $< $@

### Settings
.SECONDARY:
.PHONY: all clean default
SHELL = /bin/bash -e -o pipefail
