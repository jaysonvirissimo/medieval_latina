require "medieval_latina/dictionary"
require "medieval_latina/version"
require "set"

class MedievalLatina
  def self.[](text)
    prepare(text).map do |word|
      DICTIONARY[word] || new(word).call
    end.join(" ")
  end

  def self.prepare(text)
    text.gsub(/\W+/, " ").downcase.split(" ")
  end

  def initialize(word)
    @index = 0
    @word = word.downcase
  end

  def call
    array = []

    until index >= word.length
      substring = Substring.new(word, index)
      result = vowel(substring) || consonant(substring) || Result.new(substring.character, 1)
      array.push(result.substring)
      self.index = index + result.increment_by
    end

    array.join("")
  end

  private

  attr_accessor :index
  attr_reader :word

  CONSONENTS = {
    c: ->(rest) { SOFT_C.any? { |item| rest.start_with?(item) } ? "ch" : "k" },
    g: ->(rest) { SOFT_G.any? { |item| rest.start_with?(item) } ? "j" : "g" },
    j: ->(rest) { "y" },
    t: ->(rest) { SOFT_T.any? { |item| rest.start_with?(item) } ? "ts" : "t" },
    x: ->(rest) { "ks" }
  }
  CONSONENT_TEAMS = {gn: "n-y", qu: "kw"}.freeze
  SOFT_C = ["e", "i", "ae", "oe"].freeze
  SOFT_G = SOFT_C
  SOFT_T = ["i"].freeze
  VOWEL_TEAMS = {ae: "ay", oe: "ay", au: "ou"}.freeze
  VOWELS = {a: "ah", e: "ay", i: "ee", o: "oh", u: "oo"}.freeze

  Result = Struct.new(:substring, :increment_by)

  def consonant(substring)
    consonant_team = CONSONENT_TEAMS[substring.to_team]
    consonant = if CONSONENTS.key?(substring.character.intern)
      CONSONENTS[substring.character.intern].call(substring.rest)
    end

    if consonant_team
      Result.new(consonant_team, 2)
    elsif consonant
      Result.new(consonant, 1)
    end
  end

  def vowel(substring)
    vowel_team = VOWEL_TEAMS[substring.to_team]
    vowel = VOWELS[substring.character.intern]

    if vowel_team
      Result.new(vowel_team, 2)
    elsif vowel
      Result.new(vowel, 1)
    end
  end

  class Substring
    attr_reader :character, :rest

    def initialize(text, index)
      @character = text[index]
      @rest = text[index + 1..-1].chars.join
    end

    def to_team
      "#{character}#{rest[0]}".intern
    end
  end

  class Error < StandardError; end
end
