defmodule Day2.ChecksumCalculator do
  def calculate([_element]) do
    0
  end

  def calculate([first, second]) do
    counts_first =
      first
      |> String.graphemes()
      |> Enum.reduce(%{}, fn l, acc -> Map.update(acc, l, 1, &(&1 + 1)) end)

    counts_second =
      second
      |> String.graphemes()
      |> Enum.reduce(%{}, fn l, acc -> Map.update(acc, l, 1, &(&1 + 1)) end)

    first_with_letters_appearing_twice =
      counts_first
      |> Enum.count(fn {_, c} -> c == 2 end)

    first_with_letters_appearing_more_than_twice =
      counts_first
      |> Enum.count(fn {_, c} -> c > 2 end)

    second_with_letters_appearing_twice =
      counts_second
      |> Enum.count(fn {_, c} -> c == 2 end)

    second_with_letters_appearing_more_than_twice =
      counts_second
      |> Enum.count(fn {_, c} -> c > 2 end)

    (first_with_letters_appearing_twice + first_with_letters_appearing_more_than_twice) *
      (second_with_letters_appearing_twice + second_with_letters_appearing_more_than_twice)
  end
end
