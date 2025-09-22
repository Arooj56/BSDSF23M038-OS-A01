#include <stdio.h>
#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main() {
    printf("--- Testing String Functions ---\n");
    char s1[50] = "Hello";
    char s2[50] = "World";

    printf("Length of s1: %d\n", mystrlen(s1));
    mystrcpy(s2, s1);
    printf("After strcpy: %s\n", s2);
    mystrcat(s1, " World");
    printf("After strcat: %s\n", s1);

    printf("\n--- Testing File Functions ---\n");
    FILE* f = fopen("test.txt", "r");
    if (f) {
        int lines, words, chars;
        wordCount(f, &lines, &words, &chars);
        printf("Lines=%d Words=%d Chars=%d\n", lines, words, chars);
        fclose(f);
    } else {
        printf("test.txt not found. Skipping file test.\n");
    }

    return 0;
}

