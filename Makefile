CC = gcc
CFLAGS = -Wall -Iinclude -g

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
LIB_DIR = lib

SRCS = $(SRC_DIR)/main.c
LIB_OBJS = $(OBJ_DIR)/mystrfunctions.o $(OBJ_DIR)/myfilefunctions.o
LIB = $(LIB_DIR)/libmyutils.a
TARGET = $(BIN_DIR)/client_static

# Default build
all: $(LIB) $(TARGET)

# Build static library
$(LIB): $(LIB_OBJS) | $(LIB_DIR)
	ar rcs $@ $(LIB_OBJS)

# Compile library objects
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Build final executable
$(TARGET): $(SRCS) $(LIB) | $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

# Ensure directories exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)
$(BIN_DIR):
	mkdir -p $(BIN_DIR)
$(LIB_DIR):
	mkdir -p $(LIB_DIR)

# Clean
clean:
	rm -rf $(OBJ_DIR)/*.o $(BIN_DIR)/* $(LIB_DIR)/*.a


