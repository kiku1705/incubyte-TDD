require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  it "should return 0 when string is empty" do
    expect(Calculator.add("")).to eq(0)
  end

  it "should return sum of comma separated numbers" do
    expect(Calculator.add("1")).to eq(1)
    expect(Calculator.add("1,5")).to eq(6)
  end

  it "should handle numbers with newline and return sum" do
    expect(Calculator.add("1\n2,3")).to eq(6)
  end

  context "when delimeter is provided in the first line of the string" do
    it "should separate the numbers with given delimeter and return the sum" do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end
  end

  it "should throw an expection if negative numbers provided" do
    expect { Calculator.add("-1,4,5") }.to raise_error(/negatives not allowed - -1/)
  end
end