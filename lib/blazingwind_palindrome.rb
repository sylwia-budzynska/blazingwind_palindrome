# frozen_string_literal: true

require_relative "blazingwind_palindrome/version"

module BlazingwindPalindrome
  # Returns true for a palidrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      return false
    end
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string. Used in processed_content
  # def letters
  #   self.scan(/[a-zA-Z]*/).join

    # the early version
    # the_letters = []
    # for i in 0..self.length - 1 do
    #   if self[i].match(/[a-zA-Z]/)
    #     the_letters << self[i]
    #   end
    # end
    # the_letters.join

    # other option
    # chars.select { |c| c.match(/[a-z]/i) }.join
  # end

  private

    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end


class String
  include BlazingwindPalindrome
end

class Integer
  include BlazingwindPalindrome
end
