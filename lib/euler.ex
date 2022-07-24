defmodule EULER do
  def main do
    case isDivibleby3(5) do
      0 -> :yes
      _ -> :no
    end
  end

  def isDivibleby3(x) do
    (rem x,3) == 0
  end
end
