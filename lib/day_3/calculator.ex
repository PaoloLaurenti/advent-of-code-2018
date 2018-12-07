defmodule Day3.Calculator do
  def calculate(input) do
    input
    |> Enum.reduce(%{}, fn %{left: left, top: top, wide: wide, tall: tall}, acc ->
      0..(wide - 1)
      |> Enum.flat_map(fn w ->
        0..(tall - 1)
        |> Enum.map(fn t ->
          {left + w, top + t}
        end)
      end)
      |> Enum.reduce(acc, fn(c, a) ->
        Map.update(a, c, 1, &(&1 + 1))
      end)
    end)
    |> Enum.filter(fn {_, v} -> v > 1 end)
    |> Enum.map(fn {_, v} -> v end)
    |> Enum.count
  end
end
