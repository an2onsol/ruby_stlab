require 'rspec'
require_relative 'latin_prefixes'

describe Prefix do
  test_obj = Prefix.new
  describe '#add_prefixes' do
    it 'takes in a variable list of prefixes as input' do
      test_obj.add_prefixes('auto', 'aqua', 'amphi')
      expect(test_obj.prefixes == { 'auto' => nil,
                                    'aqua' => nil,
                                    'amphi' => nil }).to eq true
    end
  end

  describe '#add_words' do
    it 'takes in a variable list of words as input' do
      test_obj.add_words('automate', 'automobile', 'automotive', 'amphibian', 'aquarium')
      expect(test_obj.prefixes == { 'auto' => %w[automate automobile automotive],
                                    'aqua' => ['aquarium'],
                                    'amphi' => ['amphibian'] }).to eq true
    end
  end

  describe '#sort' do
    it 'sorts the prefix-word groups in lexicographic order by prefix' do
      test_obj.sort
      expect(test_obj.prefixes.keys == %w[amphi aqua auto]).to eq true
    end
  end
end
