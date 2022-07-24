defmodule EULERTest do
  use ExUnit.Case
  doctest EULER

  # check answer at https://github.com/nayuki/Project-Euler-solutions/blob/master/Answers.txt

  test "greets the world" do
    assert EULER.isDivibleby3(6) == true
    assert EULER.isDivibleby3(5) == false
  end

  test "problem 001" do
    assert EULER.Problem001.solution() == 233168
  end

  test "problem 002" do
    assert EULER.Problem002.solution() == 4613732
  end

  test "problem 003" do
    assert EULER.Problem003.solution() == 6857
  end

  test "problem 004" do
    assert EULER.Problem004.solution() == 906609
  end

  test "problem 005" do
    assert EULER.Problem005.solution() == 232792560
  end

  test "problem 006" do
    assert EULER.Problem006.solution() == 25164150
  end

  test "problem 007" do
    assert EULER.Problem007.solution() == 104743
  end

  test "problem 008" do
    assert EULER.Problem008.solution() == 23514624000
  end

  test "problem 009" do
    assert EULER.Problem009.solution() == 31875000
  end

  test "problem 010" do
    assert EULER.Problem010.solution() == 142913828922
  end

end
