defmodule Day2.Solution do
  alias Day2.ChecksumCalculator

  @spec run(input_path :: String.t()) :: :ok
  def run(input_path) do
    res =
      File.stream!(input_path)
      |> ChecksumCalculator.calculate()

    IO.puts("The result is " <> to_string(res))
    :ok
  end

  @spec run_2(input_path :: String.t()) :: :ok
  def run_2(input_path) do
    res =
      File.stream!(input_path)
      |> Enum.to_list()
      |> ChecksumCalculator.calculate_2()

    IO.puts("The result is " <> to_string(res))
    :ok
  end
end
