#!/usr/bin/env bash

scalac src/Main.scala
scala HelloWorld
rm -Rf HelloWorld.class
rm -Rf 'HelloWorld$.class'
echo "complete"

