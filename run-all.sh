#!/bin/sh

echo "The results are elapsed time in milliseconds"
echo "============================================"

echo "gc:"
./alloc_gc
./alloc_gc

echo "\ngc_boehm:"
./alloc_gc_boehm
./alloc_gc_boehm

echo "\ngc_rt:"
./alloc_gc_rt
./alloc_gc_rt

echo "\nnogc:"
./alloc_nogc
./alloc_nogc

echo "\nmalloc:"
./alloc_malloc
./alloc_malloc

echo "\nalloc0:"
./alloc_alloc0
./alloc_alloc0
