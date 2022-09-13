class Prefix
  attr_reader :prefixes

  def initialize
    @prefixes = {}
  end

  def add_prefixes(*prefixes)
    prefixes.each { |n| @prefixes[n.to_s] = nil }
  end

  def add_words(*words)
    @prefixes.each_key { |key| @prefixes[key] = words.select { |elem| elem.to_s.start_with?(key) } }
  end

  def sort
    @prefixes = Hash[@prefixes.sort]
  end
end
