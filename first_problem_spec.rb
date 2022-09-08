require 'rspec'
require_relative 'first_problem'

describe '#multiples' do
  it 'should return right values' do
    expect(multiples(10)).to eq 23
    expect(multiples(11)).to eq 33
    expect(multiples(1000)).to eq 233168
  end
end
