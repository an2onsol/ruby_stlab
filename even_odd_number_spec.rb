require 'rspec'
require_relative 'even_odd_numbers'

describe '#liked_spots' do
  it 'returns zero' do
    expect([0, 4, 6, 8].liked_spots(9)).to eq 0
  end

  it 'returns three' do
    expect([0, 4, 6, 8].liked_spots(12)).to eq 3
  end

  it 'returns one' do
    expect([4, 4, 4, 4, 5].liked_spots(7)).to eq 1
  end

  it 'returns five' do
    expect([1, 2, 3, 4, 4, 5, 5].liked_spots(100)).to eq 5
  end
end
