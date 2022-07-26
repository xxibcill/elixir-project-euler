defmodule Utils do
  # 1 1 2 3 5 8 13 21 34 55 89
  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-2) + fibo(n-1)
    end
  end
end
