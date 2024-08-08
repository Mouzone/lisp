cmake_minimum_required(VERSION 3.28)
project(lisp C)

# Specify the C standard
set(CMAKE_C_STANDARD 99)  # or 11, if you prefer C11

# Find the Editline library (if you're using -ledit instead of -lreadline)
find_package(Editline REQUIRED)

# Add the executable
add_executable(lisp main.c)

# Link the Editline library
target_link_libraries(lisp PRIVATE Editline::Editline)
