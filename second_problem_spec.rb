require 'rspec'
require_relative 'second_problem'

describe '#even_fibonacci' do
  it 'should return right values' do
    expect(even_fibonacci(2)).to eq 2
    expect(even_fibonacci(1)).to eq 0
    expect(even_fibonacci(10)).to eq 10
    expect(even_fibonacci(50)).to eq 44
    expect(even_fibonacci(4000000)).to eq 4613732
  end
end