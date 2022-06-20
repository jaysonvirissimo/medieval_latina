RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "[]" do
    {
      "ad" => "add",
      "adveniat" => "ad-vayniat",
      "alma mater" => "almuh mah-tare",
      "ambulo" => "ahmbooloh",
      "amo" => "amo",
      "appello" => "appello",
      "aqua" => "ahkwah",
      "aeternus" => "aeternus",
      "aut" => "out",
      "Caelum" => "chayloom",
      "clamo" => "klahmoh",
      "deus" => "dayoos",
      "duo" => "doo-oh",
      "ego" => "ay-goh",
      "es" => "es",
      "est" => "est",
      "estis" => "estis",
      "et" => "et",
      "ex" => "ex",
      "gloria" => "glohreeah",
      "gratia" => "grahtseeah",
      "hominem" => "hominem",
      "jesus" => "yaysoos",
      "laudo" => "loudoh",
      "luna" => "loonah",
      "mea culpa" => "mayah koolpah",
      "moveo" => "mo-vey-oh",
      "octo" => "awk-toh",
      "omnia" => "ohm-nia",
      "optime" => "op-tee-may",
      "pater" => "pah-tare",
      "principio" => "preen-cheepio",
      "puella" => "poo-elah",
      "pugno" => "poon-yoh",
      "quo" => "quo",
      "regina" => "rayjeenah",
      "rex" => "rex",
      "sanctificetur" => "sahnk-teefee-chaytoor",
      "sex" => "sayks",
      "sextus" => "sextus",
      "stibium" => "stih-bium",
      "timeo" => "teemayo",
      "toga" => "toga",
      "via" => "veeah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class[latin.to_s]).to eq(pronounciation)
      end
    end

    it "delegates to the dictionary, even when containing punctuation" do
      expect(described_class["est."]).to eq("est")
    end
  end
end
