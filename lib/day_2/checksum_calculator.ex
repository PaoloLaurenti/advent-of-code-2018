defmodule Day2.ChecksumCalculator do
  def calculate(input) do
    appearing_counts =
      input
      |> Enum.reduce(%{appearing_twice: 0, appearing_more_than_twice: 0}, fn x, acc ->
        chars = String.graphemes(x)
        counts = Enum.reduce(chars, %{}, fn l, acc -> Map.update(acc, l, 1, &(&1 + 1)) end)

        letters_appearing_twice_count = Enum.count(counts, fn {_, c} -> c == 2 end)
        letters_appearing_more_than_twice_count = Enum.count(counts, fn {_, c} -> c > 2 end)

        acc
        |> Map.update!(:appearing_twice, &(&1 + letters_appearing_twice_count))
        |> Map.update!(
          :appearing_more_than_twice,
          &(&1 + letters_appearing_more_than_twice_count)
        )
      end)

    appearing_counts.appearing_twice * appearing_counts.appearing_more_than_twice
  end
end
