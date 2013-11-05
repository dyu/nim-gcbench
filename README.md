nim-gcbench
===========

simple benchmark of the different gc strategies provided by nimrod


Build requirements:
- gcc

Requirements on the exec path:
- nimrod

To compile, exec:
- ./compile.sh

To run, exec:
- ./run-all.sh

My environment:
- Intel i7-3630QM laptop (4cores, HT) with 16g ram
- Ubuntu 13.04 x64
- gcc 4.7.3
- nimrod 0.9.3

Measurement:
- allocate a struct (single int field) 200 million times and print out the elapsed time in millis (deallocation/garbage collection time included).

- 2 samples/runs

##Results
```
The results are elapsed time in milliseconds
============================================
gc:
4280
4260

gc_boehm:
3660
3680

gc_rt:
4130
4130

nogc:
7800
7760

malloc:
4680
4670

alloc0:
7510
7520
```

