# frozen_string_literal: true

require_relative "blazingwind_palindrome/version"

class String

  # Returns trye for a palidrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      self.downcase
    end
end

