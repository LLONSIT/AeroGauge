#include <stdio.h>
#include <stdlib.h>

#define NBYTES 0x120000

int get_files(FILE *rom_file, FILE *mask_file) {
    int total;
    int value;

    for (value = 0; (total = fgetc(rom_file)) != EOF; value++) {
            fputc(total, mask_file);
    }
    return value;
}

int WriteDummyBytes(FILE *out_file, int n) {
    while (n-- > 0) {
        fputc(0xff, out_file);
    }
    return 0;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "CopyRom ROM_FILE MASK_FILE\n");
        exit(1);
    }
    FILE *rom_file = fopen(argv[1], "r");
    if (!rom_file) {
        perror(argv[1]);
        exit(1);
    }
    FILE *mask_file = fopen(argv[2], "w");
    if (!mask_file) {
        perror(argv[2]);
        exit(1);
    }
    int total = get_files(rom_file, mask_file);
    if (total < NBYTES) {
        WriteDummyBytes(mask_file, NBYTES - total);
        exit(1);
    }
    fclose(rom_file);
    fclose(mask_file);
    exit(0);
}
