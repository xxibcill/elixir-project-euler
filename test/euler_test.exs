defmodule EULERTest do
  use ExUnit.Case
  doctest EULER

  test "greets the world" do
    assert EULER.hello() == :world
  end
end
