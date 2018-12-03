defmodule Day1.FrequencyCalculator do
  def calculate(["+" <> value]) do
    {res, _} = Integer.parse(value)
    res
  end

  def calculate(["-" <> value]) do
    {res, _} = Integer.parse(value)
    -res
  end
end
