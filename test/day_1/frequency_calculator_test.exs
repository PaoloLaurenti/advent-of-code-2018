defmodule FrequencyCalculatorTest do
  use ExUnit.Case

  alias Day1.FrequencyCalculator

  describe "input with one element" do
    test "returns the value if input sign is +" do
      input = ["+42"]
      assert FrequencyCalculator.calculate(input) == 42
    end

    test "returns the value as negative if input sign is -" do
      input = ["-42"]
      assert FrequencyCalculator.calculate(input) == -42
    end
  end

  describe "input with two elements" do
    test "returns the algebric sums depending of input element signs" do
      input = ["+42", "-7"]
      assert FrequencyCalculator.calculate(input) == 35
    end
  end
end
