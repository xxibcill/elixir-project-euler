defmodule EULER.Problem003 do

  # What is the largest prime factor of the number 600851475143 ?
  # 600_851_475_143
  def solution do
    primes = primeRange(1,600_851_475_143)
    {_,factor} = Utils.factorize(600_851_475_143,primes)
    factor
  end

  def primeRange(from,to) do
    Enum.to_list(from..(to |> :math.sqrt |> trunc)) |> Enum.reverse |> Utils.filterPrime
  end
end
