#!/bin/bash
g++ -o hello_world.out `pkg-config --cflags --libs gtkmm-3.0` hello_world.cpp
