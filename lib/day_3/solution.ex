defmodule Day3.Solution do
  @regex ~r/^#\d+\s+@\s+(?<left>\d+),(?<top>\d+):\s+(?<wide>\d+)x(?<tall>\d+)$/

  def run(input_path) do
    res =
      File.stream!(input_path)
      |> Stream.map(fn r ->
        %{"left" => left, "top" => top, "wide" => wide, "tall" => tall} =
          Regex.named_captures(@regex, r)

        %{
          left: String.to_integer(left),
          top: String.to_integer(top),
          wide: String.to_integer(wide),
          tall: String.to_integer(tall)
        }
      end)
      |> Enum.to_list()
      |> Day3.Calculator.calculate()

    IO.puts("The result is " <> to_string(res))
    :ok
  end
end
