defmodule Utils do
  # 1 1 2 3 5 8 13 21 34 55 89
  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-2) + fibo(n-1)
    end
  end

  # not done yet
  def fiboSeq(n,count \\ 0,seq \\ [1,1]) when n >= 3 do
    case count do
      ^n -> seq
      _ -> fiboSeq(n,count + 1,[seq | Enum.at(seq, count-1) + Enum.at(seq, count)])
    end
  end

  # check if number is prime
  defp isPrime(n) when n in [2, 3], do: true
  defp isPrime(n) do
    floored_sqrt = :math.sqrt(n)
      |> Float.floor
      |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end
end
