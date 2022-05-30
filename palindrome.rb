# Returns true for a palindrome, false otherwise.


# Defines a Phrase class.
module Palindrome
  
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  def blank?
    !self.match(/\S/)
  end
  private
    def processed_content
      self.to_s.downcase
    end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end
=begin
# Defines a translated Phrase.
class TranslatedPhrase < String
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end
  def processed_content
    processor(translation)
  end
end
=end