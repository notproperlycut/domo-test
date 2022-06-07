defmodule Subthing do
  import Domo

  @type t() :: String.t()
  #precond(t: &v/1)

  defp v(_) do
    :ok
  end
end

defmodule Thing do
  use Domo, skip_defaults: true

  defstruct [
    :subthing1
  ]

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
    {:ok, Thing.new(%{subthing1: "a"})}
  end
end
