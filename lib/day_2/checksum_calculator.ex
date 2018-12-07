defmodule Day2.ChecksumCalculator do
  def calculate(input) do
    appearing_counts =
      input
      |> Enum.reduce(%{appearing_twice: 0, appearing_more_than_twice: 0}, fn x, acc ->
        chars = String.graphemes(x)
        counts = Enum.reduce(chars, %{}, fn l, acc -> Map.update(acc, l, 1, &(&1 + 1)) end)

        letters_appearing_twice_delta =
          if Enum.count(counts, fn {_, c} -> c == 2 end) > 0 do
            1
          else
            0
          end

        letters_appearing_more_than_twice_delta =
          if Enum.count(counts, fn {_, c} -> c > 2 end) > 0 do
            1
          else
            0
          end

        acc
        |> Map.update!(:appearing_twice, &(&1 + letters_appearing_twice_delta))
        |> Map.update!(
          :appearing_more_than_twice,
          &(&1 + letters_appearing_more_than_twice_delta)
        )
      end)

    appearing_counts.appearing_twice * appearing_counts.appearing_more_than_twice
  end

  def calculate_2(input, res \\ "")
  def calculate_2([], res), do: res

  def calculate_2(input, _) do
    [h | remaining] = input
    h = String.trim_trailing(h)
    h_length = String.length(h)

    res =
      Enum.find(remaining, fn x ->
        x = String.trim_trailing(x)

        h_length - 1 ==
          String.myers_difference(h, x)
          |> Enum.filter(fn {key, _} -> key == :eq end)
          |> Enum.map(fn {_, v} -> String.length(v) end)
          |> Enum.sum()
      end)

    if res == nil do
      calculate_2(remaining, "")
    else
      calculate_2([], diff(h, res |> String.trim_trailing()))
    end
  end

  def diff(first, second) do
    IO.inspect(first)
    IO.inspect(second)

    String.myers_difference(first, second)
    |> Enum.filter(fn {key, _} -> key == :eq end)
    |> Enum.map(fn {_, v} -> v end)
    |> Enum.join()
  end
end
