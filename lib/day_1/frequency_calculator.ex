defmodule Day1.FrequencyCalculator do
  @spec calculate(values :: Enumerable.t()) :: integer()
  def calculate(values) do
    values
    |> Stream.map(&to_num/1)
    |> Enum.sum()
  end

  def look_for_frequency_reached_twice(values, partial \\ 0, trace \\ %{}) do
    {new_trace, new_partial, found} =
      values
      |> Enum.reduce_while({trace, partial, false}, fn v, {trace, acc, _} ->
        x = to_num(v)
        new_acc = acc + x

        if Map.has_key?(trace, new_acc) do
          {:halt, {trace, new_acc, true}}
        else
          new_trace = Map.put_new(trace, new_acc, 1)
          {:cont, {new_trace, new_acc, false}}
        end
      end)

    if found do
      new_partial
    else
      look_for_frequency_reached_twice(values, new_partial, new_trace)
    end
  end

  @spec to_num(String.t()) :: integer()
  defp to_num("+" <> value), do: as_integer(value)
  defp to_num("-" <> value), do: -as_integer(value)

  @spec as_integer(String.t()) :: integer()
  defp as_integer(value) do
    {res, _} = Integer.parse(value)
    res
  end
end
