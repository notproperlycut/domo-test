Running `mix test` twice, generates the error captured in [MIX_TEST.md](MIX_TEST.md)

Running `mix dialyzer` twice, generates the error captured in [MIX_DIALYZER.md](MIX_DIALYZER.md)

In both cases, running a third time shows the error below, which requires a `mix clean` to resolve.

```
--> mix test
** (exit) exited in: GenServer.call(Domo.TypeEnsurerFactory.ResolvePlanner, {:get_types, Thing}, 5000)
    ** (EXIT) no process: the process is not alive or there's no process currently associated with the given name, possibly because its application isn't started
    (elixir 1.13.3) lib/gen_server.ex:1019: GenServer.call/3
    (domo 1.5.4) lib/domo/type_ensurer_factory/module_inspector.ex:20: Domo.TypeEnsurerFactory.ModuleInspector.beam_types_hash/1
    (domo 1.5.4) lib/domo/type_ensurer_factory/dependency_resolver.ex:130: anonymous fn/3 in Domo.TypeEnsurerFactory.DependencyResolver.remove_modules_with_unloadable_types/2
    (stdlib 3.17.1) maps.erl:410: :maps.fold_1/3
    (domo 1.5.4) lib/domo/type_ensurer_factory/dependency_resolver.ex:96: Domo.TypeEnsurerFactory.DependencyResolver.maybe_cleanup_deps/4
    (domo 1.5.4) lib/domo/type_ensurer_factory/dependency_resolver.ex:17: Domo.TypeEnsurerFactory.DependencyResolver.maybe_recompile_depending_structs/3
    (domo 1.5.4) lib/domo/type_ensurer_factory.ex:364: Domo.TypeEnsurerFactory.recompile_depending_structs/4
    (domo 1.5.4) lib/mix/tasks.compile.domo_compiler.ex:92: Mix.Tasks.Compile.DomoCompiler.build_ensurer_modules/2
```
