require 'rspec'
require_relative 'sixth_problem'

describe '#sum_square_diff' do
  it 'should return right values' do
    expect(sum_square_diff(5)).to eq 170
    expect(sum_square_diff(10)).to eq 2640
    expect(sum_square_diff(100)).to eq 25164150
  end
end
