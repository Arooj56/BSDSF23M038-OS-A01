#include "../include/myfilefunctions.h"

int wordCount(FILE* file, int* lines, int* words, int* chars) {
    if (!file) return -1;
    *lines = *words = *chars = 0;
    char c, prev = ' ';
    while ((c = fgetc(file)) != EOF) {
        (*chars)++;
        if (c == '\n') (*lines)++;
        if ((c == ' ' || c == '\n' || c == '\t') &&
            (prev != ' ' && prev != '\n' && prev != '\t')) {
            (*words)++;
        }
        prev = c;
    }
    rewind(file);
    return 0;
}

int mygrep(FILE* fp, const char* search_str, char*** matches) {
    // To keep it simple, we won’t implement full grep here
    return 0; // placeholder
}

