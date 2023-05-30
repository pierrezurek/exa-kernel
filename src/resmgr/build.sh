#!/bin/sh

set -x

../../../../emscripten/emcc src/resmgr.c src/vfs.c src/device.c src/process.c ../common/jobs.c -o exa/resmgr.js -I../include -I../common -sTOTAL_MEMORY=10MB -sTOTAL_STACK=512kB -O3 -sALLOW_MEMORY_GROWTH=1 "$@"
