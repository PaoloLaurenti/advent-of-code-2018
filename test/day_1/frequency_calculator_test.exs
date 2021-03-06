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
    test "returns the algebric sums depending of input elements sign" do
      input = ["+42", "-7"]
      assert FrequencyCalculator.calculate(input) == 35
    end
  end

  describe "input with N elements" do
    test "returns the algebric sums depending of input elements sign" do
      input = ["+42", "-7", "+4", "-51"]
      assert FrequencyCalculator.calculate(input) == -12
    end
  end
end
