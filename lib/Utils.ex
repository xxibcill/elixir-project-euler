defmodule Utils do
  # 1 1 2 3 5 8 13 21 34 55 89
  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-2) + fibo(n-1)
    end
  end

  # return list of fibonacci sequence instead of single number
  def fiboSeq(n,count \\ 2,seq \\ [1,1]) when n >= 3 do
    case count do
      ^n -> seq |> Enum.reverse
      _ -> fiboSeq(n,count + 1,[Enum.at(seq, 0) + Enum.at(seq, 1) | seq])
    end
  end

  # cut 1 head return others
  def onlyTail([_head | tail]), do: tail

  # fibonacci sequence under x value
  def fiboSeqUnderX(x, seq \\ [1,1]) when x >= 3 do
    cond do
      Enum.at(seq, 0) > x -> seq |> onlyTail |> Enum.reverse
      true -> fiboSeqUnderX(x,[Enum.at(seq, 0) + Enum.at(seq, 1) | seq])
    end
  end

  def isEven(n), do: rem(n,2) == 0
  def filterEven(list), do: Enum.filter(list,fn x -> isEven(x) end)

  # check if number is prime
  def isPrime(n) when n in [2, 3], do: true
  def isPrime(n) do
    floored_sqrt = :math.sqrt(n)
      |> Float.floor
      |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end

  def filterPrime(list) do
    Enum.filter(list,fn x -> isPrime(x) end)
  end

  def primeRange(from,to) do
    Enum.to_list(from..to) |> filterPrime
  end

  def sum(list, accumulator \\ 0) do
    case list do
      [] -> accumulator
      [head | tail] -> sum(tail, accumulator + head)
    end
  end

  # naive factorize number
  def factorize(n) do
    primes = primeRange(1,n)
    factorize(n,primes)
    # cond do
    #   isPrime(n) -> n
    #   _ ->
    # end
  end

  def factorList({number,factor},primes,list \\ []) do
    case number do
      1 -> [factor | list]
      _ -> factorList(factorize(number,primes),[factor | list])
    end
  end

  def factorize(n,primes,count \\ 0) do
    currentPrime = Enum.at(primes,count)
    cond do
      rem(n,currentPrime) == 0 -> {trunc(n/currentPrime),currentPrime}
      true -> factorize(n,primes,count + 1)
    end
  end

  def gcd(a,b) do
    case a do
      0 -> b
      _ -> gcd(rem(b,a),a)
    end
  end

  def lcm(a,b) do
    trunc(a / gcd(a,b))* b
  end

end
