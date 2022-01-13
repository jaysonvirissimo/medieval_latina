RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "[]" do
    {
      "ad" => "add",
      "alma mater" => "almuh mah-tare",
      "ambulo" => "ahmbooloh",
      "amo" => "amo",
      "aqua" => "ahkwah",
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
      "jesus" => "yaysoos",
      "laudo" => "loudoh",
      "luna" => "loonah",
      "mea culpa" => "mayah koolpah",
      "octo" => "awk-toh",
      "omnia" => "ohm-nia",
      "optime" => "op-tee-may",
      "pater" => "pah-tare",
      "pugno" => "poon-yoh",
      "quo" => "quo",
      "regina" => "rayjeenah",
      "sex" => "sayks",
      "toga" => "toga",
      "via" => "veeah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class[latin.to_s]).to eq(pronounciation)
      end
    end
  end
end
