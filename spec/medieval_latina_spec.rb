RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "[]" do
    {
      "ad" => "add",
      "adveniat" => "ad-vayniat",
      "africa" => "africa",
      "alma mater" => "almuh mah-tare",
      "ambulo" => "ahmbooloh",
      "amo" => "amo",
      "amamus" => "ah-mah-moose",
      "appello" => "appello",
      "aqua" => "ahkwah",
      "aeternus" => "aeternus",
      "aut" => "out",
      "Caelum" => "chayloom",
      "clamo" => "klahmoh",
      "creavit" => "kray-ah-veet",
      "deus" => "dayoos",
      "duo" => "doo-oh",
      "duodeviginti" => "duo-day-veejin-tee",
      "ego" => "ay-goh",
      "es" => "es",
      "est" => "est",
      "estis" => "estis",
      "et" => "ett",
      "europa" => "yoorope-uh",
      "ex" => "ex",
      "gens" => "gens",
      "germania" => "jer-maneeah",
      "gloria" => "glohreeah",
      "gratia" => "grahtseeah",
      "hominem" => "hominem",
      "italia" => "italia",
      "jesus" => "yaysoos",
      "laudo" => "loudoh",
      "luna" => "loonah",
      "mea culpa" => "mayah koolpah",
      "meus" => "may-oos",
      "moveo" => "mo-vey-oh",
      "octo" => "awk-toh",
      "omnia" => "ohm-nia",
      "optime" => "op-tee-may",
      "pater" => "pah-tare",
      "principio" => "preen-cheepio",
      "puella" => "poo-elah",
      "pugno" => "poon-yoh",
      "quo" => "quo",
      "rhenus" => "ray-noose",
      "regina" => "rayjeenah",
      "repetite" => "reppa-teetay",
      "rex" => "rex",
      "sanctificetur" => "sahnk-teefee-chaytoor",
      "septemdecim" => "septem-daycheem",
      "septimus" => "sep-tee-moose",
      "sex" => "sayks",
      "sextus" => "sextus",
      "stibium" => "stih-bium",
      "terra" => "terra",
      "terram" => "terram",
      "terreo" => "tayrayo",
      "timeo" => "teemayo",
      "toga" => "toga",
      "undeviginti" => "oon-day-veejin-tee",
      "via" => "veeah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class[latin.to_s]).to eq(pronounciation)
      end
    end

    it "delegates to the dictionary, even when containing punctuation" do
      expect(described_class["est."]).to eq("est.")
      expect(described_class["Rhenus?"]).to eq("ray-noose?")
    end

    it "preserves punctuation without wonky space between" do
      actual = described_class["Pater noster, qui es in caelis;"]
      expected = "pah-tare nohstayr, kwee es een chaylees;"
      expect(actual).to eq(expected)
    end

    it "is agnostic to diacritial marks" do
      expect(described_class["terreō"]).to eq("tayrayo")
    end
  end

  describe ".dictionary" do
    subject { MedievalLatina.dictionary }

    it "only allows known parts of speech" do
      known = MedievalLatina::PARTS_OF_SPEECH

      subject.each do |word, metadata|
        expect(known).to include(metadata["part"])
      end
    end

    it "includes at least the meaning and part of speech" do
      subject.each do |word, metadata|
        expect(metadata.keys).to include("part")
      end
    end

    it "enforces object shapes" do
      expected_keys = Set.new([
        "meaning",
        "part",
        "conjugation",
        "declension",
        "gender",
        "pronunciation",
        "ipa",
        "position"
      ])
      actual_keys = Set.new
      subject.values.each do |metadata|
        metadata.keys.each { |key| actual_keys.add(key) }
      end

      expect(actual_keys).to eq(expected_keys)
    end
  end

  describe ".adjectives" do
    specify { expect(described_class).to respond_to(:adjectives) }
  end

  describe ".adverbs" do
    specify { expect(described_class).to respond_to(:adverbs) }
  end

  describe ".verbs" do
    specify { expect(described_class).to respond_to(:verbs) }
  end

  describe ".verbs" do
    specify { expect(described_class).to respond_to(:nouns) }
  end

  describe ".words" do
    specify { expect(described_class).to respond_to(:words) }
  end

  describe "#adjective?" do
    specify { expect(described_class.adjective?("Certus")).to be_truthy }
    specify { expect(described_class.adjective?("Alias")).to be_falsey }
  end

  describe "#abverb?" do
    specify { expect(described_class.adverb?("facile.")).to be_truthy }
    specify { expect(described_class.adverb?("sum.")).to be_falsey }
  end

  describe "#noun?" do
    specify { expect(described_class.noun?("canis.")).to be_truthy }
    specify { expect(described_class.noun?("sum.")).to be_falsey }
  end

  describe "#verb?" do
    specify { expect(described_class.verb?("Voco,")).to be_truthy }
    specify { expect(described_class.verb?("Nauta,")).to be_falsey }
  end

  describe "Lexicons files meet AWS Polly requirements" do
    let(:lexicon_files) { Dir["lexicons/*.pls"] }
    let(:valid_ipa_regex) { /b|d|[d͡ʒ]|ð|f|ɡ|h|j|k|l|m|n|ŋ|p|[ɹ]|s|[ʃ]|t|[t͡ʃ]|θ|v|w|z|[ʒ]|ə|ɚ|æ|[aɪ]|[aʊ]|ɑ|[eɪ]|ɝ|ɛ|i|ɪ|[oʊ]|ɔ|[ɔɪ]|u|ʊ|ʌ|ˈ|ˌ|\./ }
    let(:schema_path) { "schemas/pls.xsd" }
    let(:schema) { Nokogiri::XML::Schema(File.read(schema_path)) }

    it "generates lexicon files" do
      expect(lexicon_files).not_to be_empty
    end

    it "generates lexicon files with valid names" do
      lexicon_files.each do |file|
        expect(File.basename(file)).to match(/\ALatin\d{2}\.pls\z/)
      end
    end

    it "generates lexicon files within the size limit" do
      lexicon_files.each do |file|
        content = File.read(file)
        expect(content.length).to be <= 40_000
      end
    end

    it "generates valid XML lexicon files" do
      lexicon_files.each do |file|
        content = File.read(file)
        expect { Nokogiri::XML(content) }.not_to raise_error
      end
    end

    it "includes the XML declaration" do
      lexicon_files.each do |file|
        content = File.read(file)
        expect(content).to match(/\A<\?xml version="1\.0" encoding="UTF-8"\?>\n/)
      end
    end

    it "contains only allowed IPA characters in the <phoneme> elements" do
      lexicon_files.each do |file|
        content = File.read(file)
        doc = Nokogiri::XML(content)
        doc.xpath("//phoneme").each do |phoneme|
          expect(phoneme.text).to match(valid_ipa_regex)
        end
      end
    end

    it "validates each PLS file against the XSD schema" do
      lexicon_files.each do |file|
        xml_document = Nokogiri::XML(File.read(file))
        expect(schema.validate(xml_document)).to be_empty, lambda {
          "Validation errors for #{File.basename(file)}: " + schema.validate(xml_document).map(&:message).join("; ")
        }
      end
    end
  end
end
