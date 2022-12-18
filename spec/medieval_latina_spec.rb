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
      expect(described_class["est."]).to eq("est")
      expect(described_class["Rhenus?"]).to eq("ray-noose")
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

  describe "#verb?" do
    specify { expect(described_class.verb?("Voco,")).to be_truthy }
    specify { expect(described_class.verb?("Nauta,")).to be_falsey }
  end
end
