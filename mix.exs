defmodule DomoTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :domo_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:domo_compiler] ++ Mix.compilers(),
      dialyzer: [plt_add_apps: [:mix]],
      test_coverage: [ignore_modules: [~r/\.TypeEnsurer$/]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:domo, "~> 1.5"}
    ]
  end
end
