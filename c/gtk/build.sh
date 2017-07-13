#!/bin/bash
gcc -o hello_world.out `pkg-config --cflags --libs gtk+-3.0` hello_world.c
