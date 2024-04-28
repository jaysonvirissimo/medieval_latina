require "builder"

class MedievalLatina
  class LexiconBuilder
    MAX_SIZE = 40000  # Character limit for each PLS file

    def self.write
      new.call
    end

    def initialize
      @hash = {}

      MedievalLatina.dictionary.each do |word, metadata|
        if metadata.key?("ipa")
          @hash[word] = metadata["ipa"]
        end
      end
    end

    def call
      file_index = 0
      xml = Builder::XmlMarkup.new(indent: 2)
      xml.instruct! :xml, encoding: "UTF-8"
      xml.lexicon(xmlns: URL, version: "1.0") do
        grouped_hash.each do |phonetics, words|
          if xml.target!.length > MAX_SIZE
            write_file(xml.target!, file_index)
            file_index += 1
            xml = Builder::XmlMarkup.new(indent: 2)  # Reset XML builder
            xml.instruct! :xml, encoding: "UTF-8"
            xml.lexicon(xmlns: URL, version: "1.0")
          end
          xml.lexeme do
            words.each { |word| xml.grapheme word }
            xml.phoneme phonetics
          end
        end
      end
      write_file(xml.target!, file_index)  # Write the last file
    end

    private

    # A lexicon name can have up to 20 characters.
    # Valid characters: a-z, A-Z, and 0-9.

    def write_file(content, index)
      formatted_index = sprintf("%03d", index)
      File.write("lexicons/Latin#{formatted_index}.pls", content)
    end

    attr_reader :hash

    def grouped_hash
      hash.group_by do |_, phonetics|
        phonetics
      end.transform_values do |pairs|
        pairs.map(&:first)
      end
    end

    URL = "http://www.w3.org/2005/01/pronunciation-lexicon".freeze
  end
end
