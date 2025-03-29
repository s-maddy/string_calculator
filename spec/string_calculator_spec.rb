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

    context "with multiple numbers" do
      it "returns the sum of 1, 2, and 3" do
        "1,2,3".extend(StringCalculator).add.should == 6
      end

      it "returns the sum of 10, 20, and 30" do
        "10,20,30".extend(StringCalculator).add.should == 60
      end

      it "returns the sum of 10, 20, 30, 40, and 50" do
        "10,20,30,40,50".extend(StringCalculator).add.should == 150
      end
    end

    context "with new lines" do
      it "returns the sum of 1 and 2 with a new line" do
        "1\n2".extend(StringCalculator).add.should == 3
      end

      it "returns the sum of 1, 2, and 3 with new lines" do
        "1\n2,3".extend(StringCalculator).add.should == 6
      end

      it "returns the sum of 1, 2, 3, and 4 with new lines" do
        "1\n2,3\n4".extend(StringCalculator).add.should == 10
      end
    end

    context "with other delimiters" do
      it "returns the sum of 1 and 2 with a custom delimiter" do
        "//;\n1;2".extend(StringCalculator).add.should == 3
      end

      it "returns the sum of 1, 2, and 3 with a custom delimiter" do
        "//;\n1;2;3".extend(StringCalculator).add.should == 6
      end
    end

    context "with negative numbers" do
      it "raises an error for a negative number" do
        expect { "-1".extend(StringCalculator).add }.to raise_error
      end

      it "raises an error for multiple negative numbers in message" do
        expect { "1,-2".extend(StringCalculator).add }.to raise_error /negatives not allowed: -2/
      end

      it "raises an error for multiple negative numbers in message" do
        expect { "1,-2,-3".extend(StringCalculator).add }.to raise_error /negatives not allowed: -2, -3/
      end
    end

  end
end