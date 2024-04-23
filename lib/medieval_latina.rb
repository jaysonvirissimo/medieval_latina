require "medieval_latina/dictionary"
require "medieval_latina/initializer"
require "medieval_latina/lexicon_builder"
require "medieval_latina/version"
require "set"

class MedievalLatina
  def self.[](text)
    prepared_words = prepare_text(text).map do |string|
      if word?(string)
        metadata = DICTIONARY.fetch(string, {})

        if metadata.key?("pronunciation")
          metadata["pronunciation"]
        else
          new(string).call
        end
      else
        string
      end
    end

    rejoin_words(prepared_words)
  end

  def self.prepare_text(text)
    text.scan(/[\p{Alnum}'-]+|[[:punct:]]+/).map do |string|
      if word?(string)
        prepare_word(string)
      else
        string
      end
    end
  end

  def self.prepare_word(word)
    word.gsub(/\P{Alnum}+/, " ").strip.downcase
  end

  def self.adjective?(word)
    adjectives.key?(prepare_word(word))
  end

  def self.adverb?(word)
    ADVERBS.key?(prepare_word(word))
  end

  def self.noun?(word)
    NOUNS.key?(prepare_word(word))
  end

  def self.verb?(word)
    VERBS.key?(prepare_word(word))
  end

  def self.adjectives
    DICTIONARY.select do |word, metadata|
      metadata["part"] == "Adjective"
    end
  end

  def self.adverbs
    ADVERBS.keys
  end

  def self.nouns
    NOUNS.keys
  end

  def self.rejoin_words(array)
    array
      .join(" ")
      .gsub(/ +?,/, ",")
      .gsub(/ +?;/, ";")
      .gsub(/ +?\./, ".")
      .gsub(/ +?\?/, "?")
  end

  def self.verbs
    VERBS.keys
  end

  def self.word?(string)
    string.match?(/\w/)
  end

  def self.words
    [
      ADVERBS,
      DICTIONARY,
      NOUNS,
      VERBS
    ].flat_map(&:keys).each_with_object(Set.new) { |word, set| set.add(word) }
  end

  def initialize(word)
    @index = 0
    @word = I18n.transliterate(word.downcase)
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
    c: ->(rest) { (SOFT_C.any? { |item| rest.start_with?(item) }) ? "ch" : "k" },
    g: ->(rest) { (SOFT_G.any? { |item| rest.start_with?(item) }) ? "j" : "g" },
    j: ->(rest) { "y" },
    t: ->(rest) { (SOFT_T.any? { |item| rest.start_with?(item) }) ? "ts" : "t" },
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
      @rest = text[index + 1..].chars.join
    end

    def to_team
      :"#{character}#{rest[0]}"
    end
  end

  class Error < StandardError; end

  DICTIONARY = frequency_list.each_with_object({}) do |(word, metadata), hash|
    hash[word] = metadata

    sanitized_word = I18n.transliterate(word)
    unless hash.key?(sanitized_word)
      hash[sanitized_word] = metadata
    end
  end
end
