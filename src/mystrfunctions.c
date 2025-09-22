#include "../include/mystrfunctions.h"

// Return length of string
int mystrlen(const char* s) {
    int len = 0;
    while (s[len] != '\0') len++;
    return len;
}

// Copy src to dest
int mystrcpy(char* dest, const char* src) {
    int i = 0;
    while ((dest[i] = src[i]) != '\0') i++;
    return i;
}

// Copy at most n characters
int mystrncpy(char* dest, const char* src, int n) {
    int i = 0;
    while (i < n && src[i] != '\0') {
        dest[i] = src[i];
        i++;
    }
    dest[i] = '\0';
    return i;
}

// Concatenate src to dest
int mystrcat(char* dest, const char* src) {
    int dlen = mystrlen(dest);
    int i = 0;
    while ((dest[dlen + i] = src[i]) != '\0') i++;
    return dlen + i;
}

