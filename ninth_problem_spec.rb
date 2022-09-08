require 'rspec'
require_relative 'ninth_problem'

describe '#find_triplet' do
  it 'should return right values' do
    expect(find_triplet(12)).to eq 60
    expect(find_triplet(30)).to eq 780
    expect(find_triplet(1000)).to eq 31875000
  end
end
