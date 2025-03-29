require_relative '../string_calculator'
require 'rspec'
RSpec.describe StringCalculator do
  describe "add" do
    it "returns 0 for an empty string" do
      "".extend(StringCalculator).add.should == 0
    end
  end
end