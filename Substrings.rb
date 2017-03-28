def substrings (sentence, dictionary)

  sentence_split = sentence.split
  dictionary_hash = Hash.new(0)

  dictionary.each do |dictionary_word|
    sentence_split.each do |sentence_word|
      sentence_word.downcase!
      if sentence_word.include? dictionary_word
        dictionary_hash[dictionary_word] += 1
      end
    end
  end
  return dictionary_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)



# def substrings(words, dictionary)
#   result = Hash.new(0)
#   words.split.each do |word|
#     dictionary.each do |dic_word|
#       if word =~ /#{dic_word}/
#         result[dic_word] += 1
#       end
#     end
#   end
#   result
# end
#
#
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
