def substrings(input,dictionary)   
    data = dictionary.map{|word| input.downcase.scan(word)}.flatten
    data.to_h{|word| [word,data.count(word)]}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

