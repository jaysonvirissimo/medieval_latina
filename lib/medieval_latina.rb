require "medieval_latina/version"

class MedievalLatina
  def initialize(text)
    @text = text
  end

  def pronounce
    text.chars.map { |character|
      DICTIONARY[character.downcase.intern] || character
    }.join("")
  end

  private

  attr_reader :text

  DICTIONARY = {a: "ah", e: "ay", i: "ee", o: "oh", u: "oo", v: "v"}

  class Error < StandardError; end
end
