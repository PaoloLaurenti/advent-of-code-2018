defmodule Day1.FrequencyCalculator do
  @spec calculate(values :: [String.t()]) :: integer()
  def calculate(values) do
    values
    |> Enum.map(&toNumber/1)
    |> Enum.sum()
  end

  @spec toNumber(String.t()) :: integer()
  defp toNumber("+" <> value), do: asInteger(value)
  defp toNumber("-" <> value), do: -asInteger(value)

  @spec asInteger(String.t()) :: integer()
  defp asInteger(value) do
    {res, _} = Integer.parse(value)
    res
  end
end
