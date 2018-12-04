defmodule ChecksumyCalculatorTest do
  use ExUnit.Case

  alias Day2.ChecksumCalculator

  describe "input with one element with different letters" do
    test "returns zero as checksum" do
      input = ["abcdef"]
      assert ChecksumCalculator.calculate(input) == 0
    end
  end
end
