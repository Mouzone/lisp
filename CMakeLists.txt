cmake_minimum_required(VERSION 3.28)
project(lisp C)

set(CMAKE_C_STANDARD 99)

add_executable(lisp parsing.c mpc.c)

target_link_libraries(lisp PRIVATE edit)
target_link_libraries(lisp PRIVATE m)

target_compile_options(lisp PRIVATE -Wall -Wextra -Wpedantic -Werror)