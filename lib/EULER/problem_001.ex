defmodule EULER.Problem001 do

  def solution do
    range(1,1000-1) |> filterDivisibleBy3or5 |> sum
  end

  def sum(list) do
    List.foldl(list, 0, fn x, acc -> x + acc end)
  end

  def filterDivisibleBy3or5(list) do
    Enum.filter(list, fn(x) -> (rem x, 3) == 0 || (rem x, 5) == 0  end)
  end

  def range(to,from,list \\ []) do
    case from do
      ^to -> [from | list]
      _ -> range(to,from-1,[from | list])
    end
  end
end
