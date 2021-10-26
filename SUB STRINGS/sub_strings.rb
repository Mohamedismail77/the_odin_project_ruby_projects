def substrings(input,dictionary)
    data = input.scan(/\w+/)
    output = data.flatten.to_h{|word| [word.downcase.strip(),dictionary.count(word.downcase.strip)]}
    output.select{|key,value| value > 0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

