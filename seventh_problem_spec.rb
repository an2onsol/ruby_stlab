require 'rspec'
require_relative 'seventh_problem'

describe '#find_prime' do
  it 'should return right values' do
    expect(find_prime(1)).to eq 2
    expect(find_prime(2)).to eq 3
    expect(find_prime(5)).to eq 11
    expect(find_prime(10)).to eq 29
    expect(find_prime(20)).to eq 71
    expect(find_prime(10001)).to eq 104743
  end
end