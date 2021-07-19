
def substrings(string, dictionary)
  array_string = string.downcase.split
  dictionary.reduce(Hash.new(0)) do |acc,value|
    array_string.each do |word|
      if word.include?(value)
      acc[value] += 1
      end
    end
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
