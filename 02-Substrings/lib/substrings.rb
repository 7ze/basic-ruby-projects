# frozen_string_literal: true

def count_pattern(word, pattern)
  word.scan(pattern).count_pattern
end

def substrings(word, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |v, a|
    regex = Regexp.new(v, Regexp::IGNORECASE)
    a[v] += count_pattern(word, regex) if word.match?(regex)
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings(%(how how the fuck it it go), dictionary)
