require "medieval_latina/version"

class MedievalLatina
  def self.[](text)
    new(text).call
  end

  def initialize(text)
    @index = 0
    @text = text
  end

  def call
    array = []

    until index >= text.length
      this_character = text[index]
      next_character = text[index + 1]
      result = vowel(this_character, next_character) || consonent(this_character)
      array.push(result.substring)
      self.index = index + result.increment_by
    end

    array.join("")
  end

  private

  attr_accessor :index
  attr_reader :text

  CONSONENTS = {j: "y", c: "k"}
  VOWEL_TEAMS = {ae: "ay", oe: "ay", au: "ow"}
  VOWELS = {a: "ah", e: "ay", i: "ee", o: "oh", u: "oo"}

  Result = Struct.new(:substring, :increment_by)

  def consonent(character)
    consonent = CONSONENTS[character.intern] || character
    Result.new(consonent, 1)
  end

  def vowel(this_character, next_character)
    vowel_team = VOWEL_TEAMS["#{this_character}#{next_character}".intern]
    vowel = VOWELS[this_character.intern]

    if vowel_team
      Result.new(vowel_team, 2)
    elsif vowel
      Result.new(vowel, 1)
    end
  end

  class Error < StandardError; end
end
