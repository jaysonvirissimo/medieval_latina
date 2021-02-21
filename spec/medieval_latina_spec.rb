RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "[]" do
    {
      "alma mater" => "almuh mah-tare",
      "ambulo" => "ahmbooloh",
      "aqua" => "ahkwah",
      "aut" => "out",
      "caelum" => "chayloom",
      "clamo" => "klahmoh",
      "deus" => "dayoos",
      "duo" => "doo-oh",
      "ego" => "ay-goh",
      "et" => "ate",
      "ex" => "ex",
      "gloria" => "glohreeah",
      "jesus" => "yaysoos",
      "laudo" => "loudoh",
      "luna" => "loonah",
      "mea culpa" => "mayah koolpah",
      "octo" => "awk-toh",
      "optime" => "op-tee-may",
      "pugno" => "poon-yoh",
      "quo" => "quo",
      "regina" => "rayjeenah",
      "sex" => "sayks",
      "toga" => "tohgah",
      "via" => "veeah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class[latin.to_s]).to eq(pronounciation)
      end
    end
  end
end
