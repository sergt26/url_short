class Site < ApplicationRecord
# this returns an array of single characters
    def get_char
      result = []
      result += (0..9).to_a
      result += ("a".."z").to_a
      result += ("A".."Z").to_a
      return result
    end

    def generate_short(num_length = 5)
      result = ""
      list = get_char   #list is an array of all the numbers and characters
      num_length.times do |i|
        result += list.sample.to_s
      end
       result
    end
end
