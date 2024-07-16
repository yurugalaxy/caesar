# frozen_string_literal: true

require 'pry-byebug'

def caesar_cypher(string, offset)
        # Capitals unicode = 65-90
        # Lowercase unicode = 97-122
        string_nums = string.split('').map(&:ord)
        new_nums = string_nums.map do |letter|
                if (letter < 91 && letter + offset > 90) || (letter > 97 && letter + offset > 122)
                        letter - 26 + offset
                elsif letter < 65 || letter > 122 || (91..96).include?(letter)
                        letter
                else
                        letter + offset
                end
        end
        output = new_nums.map(&:chr).join('')
        p "Original : #{string}"
        p "Caesar'd! : #{output}"
end

caesar_cypher('Hewo [there]!', 25)
