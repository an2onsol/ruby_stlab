require 'rspec'
require_relative 'third_problem'

describe '#prime_factor' do
  it 'should return right values' do
    expect(prime_factor(2)).to eq 2
    expect(prime_factor(13195)).to eq 29
    expect(prime_factor(600851475143)).to eq 6857
  end

  it 'should raise ArgumentError exception' do
    expect { prime_factor(1) }.to raise_error(ArgumentError)
    expect { prime_factor(0) }.to raise_error(ArgumentError)
    expect { prime_factor(-100) }.to raise_error(ArgumentError)
  end
end
