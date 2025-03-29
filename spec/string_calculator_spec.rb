require_relative '../string_calculator'
require 'rspec'
RSpec.describe StringCalculator do
  describe "add" do
    it "returns 0 for an empty string" do
      "".extend(StringCalculator).add.should == 0
    end

    context "with a single number" do
      it "returns the number 0 if 0" do
        "0".extend(StringCalculator).add.should == 0
      end

      it "returns the number 1 if 1" do
        "1".extend(StringCalculator).add.should == 1
      end

      it "returns the number 100 if 100" do
        "100".extend(StringCalculator).add.should == 100
      end
    end

    context "with two numbers" do
      it "returns the sum of 1 and 2" do
        "1,2".extend(StringCalculator).add.should == 3
      end

      it "returns the sum of 100 and 200" do
        "100,200".extend(StringCalculator).add.should == 300
      end
    end
  end
end