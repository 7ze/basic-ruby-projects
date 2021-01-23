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
