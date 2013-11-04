#!/bin/sh

nimrod c -f -d:release --verbosity:0 --parallelBuild:1 --nimcache:_cache_gc alloc_gc.nim
nimrod c -f -d:release --verbosity:0 --parallelBuild:1 --nimcache:_cache_gc_boehm --gc:boehm alloc_gc_boehm.nim
nimrod c -f -d:release --verbosity:0 --parallelBuild:1 --nimcache:_cache_gc_rt -d:useRealtimeGC alloc_gc_rt.nim
nimrod c -f -d:release --verbosity:0 --parallelBuild:1 --nimcache:_cache_nogc --gc:none alloc_nogc.nim
nimrod c -f -d:release --verbosity:0 --parallelBuild:1 --nimcache:_cache_malloc --gc:none -d:useMalloc alloc_malloc.nim
