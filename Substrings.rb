def substrings (sentence, dictionary)

  # empty hash with values at 0
  dictionary_hash = Hash.new(0)
  # iterate through dictionary and sentence to find matches and save them in hash
  dictionary.each do |dictionary_word|
    sentence.split.each do |sentence_word|
      # lowercase each input word
      sentence_word.downcase!
      # if word is found in dictionary,
      if sentence_word.include? dictionary_word
        # hash and increase count by 1
        dictionary_hash[dictionary_word] += 1
      end
    end
  end
  # return hash
  return dictionary_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
