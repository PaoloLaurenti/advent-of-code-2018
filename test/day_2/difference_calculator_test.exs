defmodule DifferenceCalculatorTest do
  use ExUnit.Case

  alias Day2.ChecksumCalculator

  test "calculate difference" do
    input = ["abcdef", "abcyef"]
    assert ChecksumCalculator.calculate_2(input) == "abcef"
  end
end
