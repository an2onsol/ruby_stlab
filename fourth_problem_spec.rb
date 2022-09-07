require 'rspec'
require_relative './fourth_problem'

describe '#largest_palindrome' do
  it 'should return the largest palindrome' do
    expect(largest_palindrome).to eq 906609
  end
end