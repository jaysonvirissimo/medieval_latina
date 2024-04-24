require "json"
require "set"

class MedievalLatina
  PARTS_OF_SPEECH = [
    "Adjective",
    "Adverb",
    "Conjunction",
    "Noun",
    "Preposition",
    "Pronoun",
    "Verb"
  ].to_set.freeze

  def self.frequency_list
    @data ||= load_data
  end

  def self.load_data
    file_path = File.join(File.dirname(__FILE__), "../../data/dictionary.json")
    JSON.parse(File.read(file_path))
  end
end
