#include "stdio.h"
#include "stdlib.h"


void write_characters(FILE* __stream, int value) {
   while (value-- > 0) {
        fputc(0xff, __stream);
    }
}

// Write in to the specified files
int get_files(FILE *__stream, FILE *__stream1) {

    int total;
    int value;

    for (value = 0; (total = fgetc(__stream)) != -1; value++) {
            fputc(total, __stream1);
    }
    return value;
}

int main(int argc, char *argv[]) {

    int total;

	/* Program Init */
    if (argc != 3) {
        fprintf(stderr, "CopyRom ROM_file OUT_file\n");
        exit(1);
    }

/*********************************************

	opening files provided by the argv

*********************************************/

    argv++; //increment

   FILE *__stream = fopen(*argv,"r");

    if (__stream == 0) {
        perror(*argv);
        exit(1);
    }

    argv++; //increment

  FILE *__stream1 = fopen(*argv,"w");

   if (__stream1 == 0) {
        perror(*argv);
        exit(1);
    }

    //Getting the files and writting!
    total = get_files(__stream, __stream1);

    if (total < 0x120000) {
        write_characters(__stream1, 0x120000 - total);
    }

    fclose(__stream);
    fclose(__stream1);
    return 0;
}
