require "builder"

class MedievalLatina
  class LexiconBuilder
    def self.write
      new.call.write
    end

    def initialize
      @hash = parts.each_with_object({}) do |part, hash|
        hash.merge(part)
      end

      MedievalLatina.frequency_list.each do |word, metadata|
        if metadata.key?("ipa")
          @hash[word] = metadata["ipa"]
        end
      end

      @xml = Builder::XmlMarkup.new(indent: 2)
    end

    def call
      xml.instruct! :xml, encoding: "UTF-8"
      xml.lexicon(xmlns: URL, version: "1.0") do
        grouped_hash.each do |phonetics, words|
          xml.lexeme do
            words.each { |word| xml.grapheme word }
            xml.phoneme phonetics
          end
        end
      end

      self
    end

    def write
      File.write("lexicon.pls", xml.target!)
    end

    private

    attr_reader :hash, :xml

    def grouped_hash
      hash.group_by do |_, phonetics|
        phonetics
      end.transform_values do |pairs|
        pairs.map(&:first)
      end
    end

    def parts
      [ADJECTIVES, ADVERBS, NOUNS, VERBS]
    end

    URL = "http://www.w3.org/2005/01/pronunciation-lexicon".freeze
  end
end
