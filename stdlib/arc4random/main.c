#include <p101_env/env.h>
#include <p101_error/error.h>
#include <p101_unix/p101_stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    struct p101_error *error;
    struct p101_env   *env;
    uint32_t           value;

    error = p101_error_create(false);
    env   = p101_env_create(error, NULL);
    value = p101_arc4random(env);
    printf("p101_arc4random() = %u\n", value);
    p101_env_destroy(env);
    p101_error_destroy(error);

    return EXIT_SUCCESS;
}
