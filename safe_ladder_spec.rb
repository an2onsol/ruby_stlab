require 'rspec'
require_relative 'safe_ladder'

describe '#safe?' do
  it 'returns true' do
    expect(Ladder.new(
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#####',
      '#   #'
    ).safe?).to eq true
  end

  it 'returns true' do
    expect(Ladder.new(
      '#    #',
      '######',
      '#    #',
      '######',
      '#    #',
      '######',
      '#    #'
    ).safe?).to eq true
  end

  it 'returns false' do
    expect(Ladder.new(
      '#   #',
      '#####',
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#####',
      '#   #'
    ).safe?).to eq false
  end

  it 'returns false' do
    expect(Ladder.new(
      '#  #',
      '####',
      '#  #',
      '#  #',
      '####',
      '#  #',
      '#  #',
      '####',
      '#  #'
    ).safe?).to eq false
  end

  it 'returns false' do
    expect(Ladder.new(
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#   #',
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#   #',
      '#   #',
      '#####',
      '#   #'
    ).safe?).to eq false
  end

  it 'returns false' do
    expect(Ladder.new(
      '#   #',
      '#  ##',
      '#   #',
      '#   #',
      '#####',
      '#   #',
      '#   #',
      '#####',
      '#   #'
    ).safe?).to eq false
  end
end
