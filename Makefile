# -----------------------------------
# Craphlite SQLite Extension Makefile
# -----------------------------------

# Compiler and flags
CC      := gcc
SRC_DIR := src
INCLUDE := -I./include
PKG     := $(shell pkg-config --cflags --libs sqlite3)

# Build types
CFLAGS_RELEASE := -fPIC -O2 $(INCLUDE) $(shell pkg-config --cflags sqlite3)
CFLAGS_DEBUG   := -fPIC -g -Wall -Wextra -O0 $(INCLUDE) $(shell pkg-config --cflags sqlite3)

LDFLAGS := -shared $(PKG)

# Output shared library
TARGET  := craphlite.so

# Sources and objects
SRCS    := $(wildcard $(SRC_DIR)/*.c)
OBJS    := $(SRCS:.c=.o)

# Default: release build
all: $(TARGET)

# Release build
$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

# Compile each .c file into .o
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS_RELEASE) -c $< -o $@

# Debug build
debug: CFLAGS := $(CFLAGS_DEBUG)
debug: clean $(TARGET)

# Clean artifacts
clean:
	rm -f $(SRC_DIR)/*.o $(TARGET)

# Test the extension in SQLite
test: $(TARGET)
	sqlite3 ":memory:" ".load ./$(TARGET)" "select 'Craphlite loaded successfully';"

# Lint using cppcheck
lint:
	cppcheck --enable=all --inconclusive --std=c11 -I include src

# Format using clang-format
format:
	clang-format -i src/*.c include/*.h

.PHONY: all clean test debug lint format
