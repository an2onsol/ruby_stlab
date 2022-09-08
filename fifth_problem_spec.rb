require 'rspec'
require_relative 'fifth_problem'

describe '#smallest_multiple' do
  it 'should return right values' do
    expect(smallest_multiple(1, 10)).to eq 2520
    expect(smallest_multiple(1, 15)).to eq 360360
    expect(smallest_multiple(1, 20)).to eq 232792560
  end
end
