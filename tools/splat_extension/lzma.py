import pylzma

from util import log, options
from segtypes.n64.segment import N64Segment

class N64SegLzma(N64Segment):
    def split(self, rom_bytes):
        out_dir = options.opts.asset_path / self.dir
        out_dir.mkdir(parents=True, exist_ok=True)

        if self.rom_end == "auto":
            log.error(
                f"segment {self.name} needs to know where it ends; add a position marker [0xDEADBEEF] after it"
            )

        out_path = out_dir / f"{self.name}.bin"
        with open(out_path, "wb") as f:
            assert isinstance(self.rom_start, int)
            assert isinstance(self.rom_end, int)

            self.log(f"Decompressing {self.name}")
            compressed_bytes = rom_bytes[self.rom_start : self.rom_end]
            decompressed_bytes = pylzma.decompress(compressed_bytes)
            f.write(decompressed_bytes)

        self.log(f"Wrote {self.name} to {out_path}")

    def get_linker_entries(self):
        from segtypes.linker_entry import LinkerEntry

        return [
            LinkerEntry(
                self,
                [options.get_asset_path() / self.dir / f"{self.name}.bin"],
                options.get_asset_path() / self.dir / f"{self.name}.Lzma",
                self.get_linker_section(),
            )
        ]

