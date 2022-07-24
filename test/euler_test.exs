defmodule EULERTest do
  use ExUnit.Case
  doctest EULER

  test "greets the world" do
    assert EULER.isDivibleby3(6) == true
    assert EULER.isDivibleby3(5) == false
  end

  test "problem 001" do
    assert EULER.Problem001.solution() == 233168
  end
end
