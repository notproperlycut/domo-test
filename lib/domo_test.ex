defmodule Subthing do
  import Domo

  @type t() :: String.t()
  precond(t: &v/1)

  defp v(_) do
    :ok
  end

  def empty, do: ""
end

defmodule Thing do
  use Domo

  defstruct subthing1: Subthing.empty()

  @type t() :: %__MODULE__{
    subthing1: Subthing.t(),
  }
  precond t: &v/1

  defp v(_) do
    :ok
  end
end

defmodule DomoTest do
  def hello do
    {:ok, Thing.new()}
  end
end
