require "cgi"
require "rexml/document"

class MedievalLatina
  class LexiconBuilder
    include REXML

    def initialize(words, lang: "en-US")
      @document = Document.new
      @words = words
      @lang = lang
    end

    def call
      document.add_element "lexicon", SPECIFICATION.merge("xml:lang" => lang)

      words.each do |word, pronunciation|
        lexeme = Element.new("lexeme")
        grapheme = Element.new("grapheme")
        phoneme = Element.new("phoneme")

        grapheme.text = CGI.unescapeHTML(word)
        phoneme.text = pronunciation

        lexeme.add_element(grapheme)
        lexeme.add_element(phoneme)

        document.root.add_element(lexeme)
      end

      document
    end

    private

    attr_reader :document, :words, :lang

    SPECIFICATION = {
      "version" => "1.0",
      "xmlns" => "http://www.w3.org/2005/01/pronunciation-lexicon",
      "alphabet" => "ipa"
    }.freeze
  end
end
