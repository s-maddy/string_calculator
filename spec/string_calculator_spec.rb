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
    end
  end
end