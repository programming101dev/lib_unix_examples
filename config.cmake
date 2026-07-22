set(PROJECT_NAME "p101_unix_examples")
set(PROJECT_VERSION "1.0.0")
set(PROJECT_DESCRIPTION "Examples for lib_unix (p101 BSD/Unix-extension wrappers)")
set(PROJECT_LANGUAGE "C")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Common compiler flags
set(STANDARD_FLAGS
        -D_POSIX_C_SOURCE=200809L
        -D_XOPEN_SOURCE=700
        #-D_GNU_SOURCE
        #-D_DARWIN_C_SOURCE
        #-D__BSD_VISIBLE
        -Werror
)

# Define targets — one executable per example. Add a line here and a matching
# <target>/main.c to grow the set.
set(EXECUTABLE_TARGETS
        arc4random
)

set(LIBRARY_TARGETS "")

set(_P101_UNIX_EXAMPLE_LIBS
        p101_error
        p101_env
        p101_unix
)

set(arc4random_SOURCES stdlib/arc4random/main.c)
set(arc4random_HEADERS "")
set(arc4random_LINK_LIBRARIES ${_P101_UNIX_EXAMPLE_LIBS})
