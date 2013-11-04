nim-gcbench
===========

simple benchark of the different gc strategies provided by nimrod


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
- allocate a struct with a single int field 200 million times and print out the elapsed time in millis (deallocation/garbage collection time included).

- 2 samples/runs

##Results
```
The results are elapsed time in milliseconds
============================================
gc:
4280
4280

gc_boehm:
3620
3670

gc_rt:
4160
4160

nogc:
7800
7790

malloc:
4690
4700
```

