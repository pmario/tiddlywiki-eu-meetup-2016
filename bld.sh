#!/bin/bash

# build all output

rm -Rf wiki/output/*

tiddlywiki wiki --verbose --fetch servers --build
