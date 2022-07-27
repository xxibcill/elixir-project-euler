defmodule EULER.Problem002 do
  def solution do
    4_000_000 |> Utils.fiboSeqUnderX |> Utils.filterEven |> Utils.sum
  end
end
