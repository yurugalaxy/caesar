# frozen_string_literal: true

require 'pry-byebug'

def bubble_sort(array)
        length = array.length

        loop do
                swapped = false
                array.each_with_index do |num, index|
                        index += 1
                        next unless index < length

                        next unless num > array[index]

                        temp = array[index]
                        array[index] = num
                        array[index - 1] = temp
                        swapped = true
                end

                break if swapped == false

                p array
        end
end

bubble_sort([4, 3, 78, 2, 0, 2])
