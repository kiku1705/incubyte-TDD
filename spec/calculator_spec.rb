require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  it "should return 0 when string is empty" do
    expect(Calculator.add("")).to eq(0)
  end

  it "should return sum of comm separated numbers" do
    expect(Calculator.add("1")).to eq(1)
    expect(Calculator.add("1,5")).to eq(6)
  end
end