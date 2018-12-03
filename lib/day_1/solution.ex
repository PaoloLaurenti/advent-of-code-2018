defmodule Day1.Solution do
  alias Day1.FrequencyCalculator

  @spec run(input_path :: String.t()) :: :ok
  def run(input_path) do
    res =
      File.stream!(input_path)
      |> FrequencyCalculator.calculate()

    IO.puts("The result is " <> to_string(res))
    :ok
  end
end
