defmodule DomoTestTest do
  use ExUnit.Case
  doctest DomoTest

  test "greets the world" do
    {:ok, _} = DomoTest.hello()
  end
end
