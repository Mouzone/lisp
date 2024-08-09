cmake_minimum_required(VERSION 3.28)
project(lisp C)

# Specify the C standard
set(CMAKE_C_STANDARD 99)  # or 11, if you prefer C11

# Add the executable
add_executable(lisp parsing.c)

# Link the Editline library
target_link_libraries(lisp PRIVATE readline)

target_compile_options(lisp PRIVATE -Wall -Wextra -Wpedantic -Werror)