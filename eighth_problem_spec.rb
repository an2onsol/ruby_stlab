require 'rspec'
require_relative 'eighth_problem'

describe '#largest_product' do
  it 'should return right values' do
    expect(largest_product(2)).to eq 81
    expect(largest_product(4)).to eq 5832
    expect(largest_product(13)).to eq 5377010688
  end
end
