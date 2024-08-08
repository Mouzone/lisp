# Define the compiler
CC = gcc

# Define the compiler flags
CFLAGS = -Wall -g

# Define the linker flags
LDFLAGS = -ledit

# Define the target executable
TARGET = lisp

# Define the source file
SRCS = main.c

# Rule to build the target
$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS) $(LDFLAGS)

# Rule to clean up build artifacts
clean:
	rm -f $(TARGET)
