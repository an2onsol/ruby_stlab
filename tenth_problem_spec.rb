require 'rspec'
require_relative 'tenth_problem'

describe '#sum_of_primes' do
  it 'should return right values' do
    expect(sum_of_primes(10)).to eq 17
    expect(sum_of_primes(9)).to eq 17
    expect(sum_of_primes(20)).to eq 77
    expect(sum_of_primes(2)).to eq 2
    expect(sum_of_primes(2000000)).to eq 142913828922
  end
end