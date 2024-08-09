# Define the compiler
CC = gcc

# Define the compiler flags
CFLAGS = -Wall -Wextra -Wpedantic -Werror -std=c99 -g

# Define the linker flags
LDFLAGS = -ledit -lm

# Define the target executable
TARGET = lisp

# Define the source file
SRCS = parsing.c mpc.c

# Rule to build the target
$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS) $(LDFLAGS)

# Rule to clean up build artifacts
clean:
	rm -f $(TARGET)
