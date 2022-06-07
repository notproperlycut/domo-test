```sh
--> mix clean

--> mix dialyzer
Compiling 1 file (.ex)
Domo is compiling type ensurer for 1 module (.ex)
Generated domo_test app
Finding suitable PLTs
Checking PLT...
[:compiler, :crypto, :domo, :elixir, :kernel, :logger, :mix, :stdlib]
PLT is up to date!
No :ignore_warnings opt specified in mix.exs and default does not exist.

Starting Dialyzer
[
  check_plt: false,
  init_plt: '/home/chris/working/github/notproperlycut/domo_test/_build/dev/dialyxir_erlang-24.3.2_elixir-1.13.3_deps-dev.plt',
  files: ['/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.DomoTest.beam',
   '/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.Subthing.beam',
   '/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.Thing.TypeEnsurer.beam',
   '/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.Thing.beam'],
  warnings: [:unknown]
]
Total errors: 0, Skipped: 0, Unnecessary Skips: 0
done in 0m2.14s
done (passed successfully)

--> mix dialyzer
Domo is compiling type ensurer for 0 module (.ex)
Generated domo_test app
Finding suitable PLTs
Checking PLT...
[:compiler, :crypto, :domo, :elixir, :kernel, :logger, :mix, :stdlib]
PLT is up to date!
No :ignore_warnings opt specified in mix.exs and default does not exist.

Starting Dialyzer
[
  check_plt: false,
  init_plt: '/home/chris/working/github/notproperlycut/domo_test/_build/dev/dialyxir_erlang-24.3.2_elixir-1.13.3_deps-dev.plt',
  files: ['/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.DomoTest.beam',
   '/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.Subthing.beam',
   '/home/chris/working/github/notproperlycut/domo_test/_build/dev/lib/domo_test/ebin/Elixir.Thing.TypeEnsurer.beam'],
  warnings: [:unknown]
]
Total errors: 2, Skipped: 0, Unnecessary Skips: 0
done in 0m2.02s
_build/dev/lib/domo_test/.mix/domo_generated_code/thing_type_ensurer.ex:20:unknown_function
Function Thing.__precond__/2 does not exist.
________________________________________________________________________________
lib/domo_test.ex:31:unknown_function
Function Thing.new/0 does not exist.
________________________________________________________________________________
done (warnings were emitted)
Halting VM with exit status 2
```
