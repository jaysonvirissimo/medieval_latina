require "medieval_latina/version"

class MedievalLatina
  def initialize(text)
    @text = text
  end

  def pronounce
    text.chars.map do |character|
      DICTIONARY[character.downcase.intern]
    end.join('-')
  end

  private

  attr_reader :text

  DICTIONARY = { a: 'ah', i: 'ee', v: 'v'}

  class Error < StandardError; end
end
