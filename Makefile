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

# === Dynamic Library Build ===
DYN_LIB = lib/libmyutils.so
DYN_TARGET = bin/client_dynamic

# Build dynamic library
$(DYN_LIB): $(OBJECTS)
	$(CC) -shared -o $@ $^

# Build dynamic client
$(DYN_TARGET): obj/main.o $(DYN_LIB)
	$(CC) -o $@ obj/main.o -Llib -lmyutils

# Run dynamic client
run_dynamic: $(DYN_TARGET)
	LD_LIBRARY_PATH=lib ./$(DYN_TARGET)

