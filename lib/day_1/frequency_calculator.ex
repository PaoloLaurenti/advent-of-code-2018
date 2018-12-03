defmodule Day1.FrequencyCalculator do
  def calculate(values) do
    values
    |> Enum.map(&toNumber/1)
    |> Enum.sum()
  end

  defp toNumber("+" <> value), do: asInteger(value)
  defp toNumber("-" <> value), do: -asInteger(value)

  defp asInteger(value) do
    {res, _} = Integer.parse(value)
    res
  end
end
