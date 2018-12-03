defmodule FrequencyCalculatorTest do
  use ExUnit.Case

  alias Day1.FrequencyCalculator

  describe "input with one row" do
    test "returns the value if input sign is +" do
      input = ["+42"]
      assert FrequencyCalculator.calculate(input) == 42
    end
  end
end
