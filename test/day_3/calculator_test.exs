defmodule Day3CalculatorTest do
  use ExUnit.Case

  alias Day3.Calculator

  test "calculate how many inches of fabric are within two claims" do
    input = [
      %{left: 1, top: 3, wide: 4, tall: 4},
      %{left: 3, top: 1, wide: 4, tall: 4},
      %{left: 5, top: 5, wide: 2, tall: 2}
    ]

    assert Calculator.calculate(input) == 4
  end

  test "calculate how many inches of fabric are within two or more claims" do
    input = [
      %{left: 1, top: 3, wide: 4, tall: 4},
      %{left: 3, top: 1, wide: 4, tall: 4},
      %{left: 4, top: 4, wide: 2, tall: 2}
    ]

    assert Calculator.calculate(input) == 6
  end
end
