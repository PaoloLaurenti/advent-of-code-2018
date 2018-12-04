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

    test "with only one letter appearing three times returns zero as checksum" do
      input = ["abbbcdef"]
      assert ChecksumCalculator.calculate(input) == 0
    end

    test "with only one letter appearing more than three times returns zero as checksum" do
      input = ["abbbcdbbbef"]
      assert ChecksumCalculator.calculate(input) == 0
    end
  end

  describe "input with two elements" do
    test "whith different letters returns zero as checksum" do
      input = ["abcdef", "gsrvhad"]
      assert ChecksumCalculator.calculate(input) == 0
    end

    test "with only one that has a letter appearing twice returns zero as checksum" do
      input = ["abbcdef", "gsrvhad"]
      assert ChecksumCalculator.calculate(input) == 0
    end

    test "with only one that has a letter appearing three times returns zero as checksum" do
      input = ["abcdef", "gsrrvrad"]
      assert ChecksumCalculator.calculate(input) == 0
    end

    test "with one having a letter appearing twice and the other one having a letter apperaing three times, returns one as checksum" do
      input = ["abbcdef", "gsrrvrad"]
      assert ChecksumCalculator.calculate(input) == 1
    end

    test "with one having two letters appearing twice and the other one having a letter apperaing three times, returns one as checksum" do
      input = ["ebbcdef", "gsrrvrad"]
      assert ChecksumCalculator.calculate(input) == 2
    end
  end
end
