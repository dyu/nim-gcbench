from times import cpuTime

#proc current_timestamp*(): int64 {.importc, cdecl, dynlib:"libnewplus.so".}

type Foo {.pure, final.} = object
  x:int

proc newFoo(x = 1): ref Foo =
  result.new
  result.x = x

proc start =
  let start = (cpuTime() * 1000.0)
  #let start = current_timestamp()
  
  var i = 0
  while i < 200_000_000:
    let f = newFoo()
    i = i + f.x
    #GC_unref(f)
  
  GC_fullCollect()
  
  let elapsed = (cpuTime() * 1000.0) - start
  echo elapsed.int64
  #let
  #  endts = current_timestamp()
  #  elapsed = endts - start
  #
  #echo elapsed

when isMainModule:
  GC_setMaxPause(100) # microseconds
  start()

