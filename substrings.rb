#!/usr/bin/env ruby

def substrings(word, dictionary)
  result = Hash.new(0)
  dictionary.each do |value|
    if word.include?(value)
      result[value] += 1
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
