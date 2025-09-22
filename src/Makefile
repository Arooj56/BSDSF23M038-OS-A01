# Macros
CC = gcc
CFLAGS = -Wall -I../include
OBJ_DIR = ../obj
SRC_DIR = ../src

OBJS = $(OBJ_DIR)/mystrfunctions.o $(OBJ_DIR)/myfilefunctions.o

all: $(OBJS)

$(OBJ_DIR)/mystrfunctions.o: $(SRC_DIR)/mystrfunctions.c ../include/mystrfunctions.h
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/myfilefunctions.o: $(SRC_DIR)/myfilefunctions.c ../include/myfilefunctions.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_DIR)/*.o

