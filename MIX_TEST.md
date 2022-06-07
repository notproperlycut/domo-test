```
--> mix clean

--> mix test
Compiling 1 file (.ex)
Domo is compiling type ensurer for 1 module (.ex)
Generated domo_test app
.

Finished in 0.04 seconds (0.00s async, 0.04s sync)
1 test, 0 failures

Randomized with seed 2176

--> mix test
Domo is compiling type ensurer for 0 module (.ex)
Generated domo_test app


  1) test greets the world (DomoTestTest)
     test/domo_test_test.exs:5
     ** (UndefinedFunctionError) function Thing.new/0 is undefined (module Thing is not available)
     code: {:ok, _} = DomoTest.hello()
     stacktrace:
       Thing.new()
       (domo_test 0.1.0) lib/domo_test.ex:31: DomoTest.hello/0
       test/domo_test_test.exs:6: (test)



Finished in 0.1 seconds (0.00s async, 0.1s sync)
1 test, 1 failure

Randomized with seed 26762
```
