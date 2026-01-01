# frozen_string_literal: true

require_relative "blazingwind_palindrome/version"

class String

  # Returns trye for a palidrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    # the early version
    the_letters = []
    for i in 0..self.length - 1 do
      if self[i].match(/[a-zA-Z]/)
        the_letters << self[i]
      end
    end
    the_letters.join
    # other option
    # self.scan(/[a-zA-Z]*/).join
  end

  private

    def processed_content
      self.letters.downcase
    end
end
