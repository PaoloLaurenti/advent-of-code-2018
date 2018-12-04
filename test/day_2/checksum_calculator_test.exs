defmodule ChecksumyCalculatorTest do
  use ExUnit.Case

  alias Day2.ChecksumCalculator

  describe "input with one element" do
    test "with different letters returns zero as checksum" do
      input = ["abcdef"]
      assert ChecksumCalculator.calculate(input) == 0
    end

    test "with only one letter appearing twice returns zero as checksum" do
      input = ["abbcdef"]
      assert ChecksumCalculator.calculate(input) == 0
    end
  end
end
