defmodule Day1.FrequencyCalculator do
  def calculate(["+" <> value]) do
    asInteger(value)
  end

  def calculate(["-" <> value]) do
    -asInteger(value)
  end

  def asInteger(value) do
    {res, _} = Integer.parse(value)
    res
  end
end
