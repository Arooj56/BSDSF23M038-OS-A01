#include <stdio.h>

// Count lines, words and chars in file. Return 0 on success, -1 on failure
int wordCount(FILE* file, int* lines, int* words, int* chars);

// Search for lines containing search_str. Return count of matches, -1 on failure
int mygrep(FILE* fp, const char* search_str, char*** matches);

