# frozen_string_literal: true

require 'briandorian_palindrome/version'

class String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    the_letters = []
    (0..length - 1).each do |i|
      the_letters << self[i] if self[i].match(/[a-zA-Z]/)
    end
    the_letters.join
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    letters.downcase
  end
end
