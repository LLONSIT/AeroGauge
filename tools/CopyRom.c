#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 4096

const int NBYTES = 0x120000;


int get_files(FILE *rom_file, FILE *mask_file) {
    int total = 0;
    char buffer[BUFFER_SIZE];
    size_t bytes_read;

    // Use a buffer to copy the contents of rom_file to mask_file
    while ((bytes_read = fread(buffer, 1, BUFFER_SIZE, rom_file)) > 0) {
        fwrite(buffer, 1, bytes_read, mask_file);
        total += bytes_read;
    }
    return total;
}

int WriteDummyBytes(FILE *out_file, int n) {
    // Use fseek and fwrite to write the dummy bytes
    fseek(out_file, n, SEEK_CUR);
    fputc(0xff, out_file); 
    return 0;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "CopyRom ROM_FILE MASK_FILE\n");
        return 1;
    }
    FILE *rom_file = fopen(argv[1], "r");
    if (!rom_file) {
        perror(argv[1]);
        return 1;
    }
    FILE *mask_file = fopen(argv[2], "w");
    if (!mask_file) {
        perror(argv[2]);
        return 1;
    }
    int total = get_files(rom_file, mask_file);
    if (total < NBYTES) {
        WriteDummyBytes(mask_file, NBYTES - total);
        return 1;
    }
    fclose(rom_file);
    fclose(mask_file);
    return 0;
}

