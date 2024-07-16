# frozen_string_literal: true

require 'pry-byebug'

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
        split_string = string.downcase.split(' ')

        result = dictionary.each_with_object(Hash.new(0)) do |word, hash|
                split_string.each do |sub|
                        hash[word] += 1 if sub.include?(word)
                end
        end
        p result
end

substrings("Howdy partner! Sit down, how's it going?", dictionary)
