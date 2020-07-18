RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "[]" do
    {
      ambulo: "ahmbooloh",
      aqua: "ahkwah",
      caelum: "chayloom",
      clamo: "klahmoh",
      deus: "dayoos",
      gloria: "glohreeah",
      jesus: "yaysoos",
      laudo: "lowdoh",
      luna: "loonah",
      regina: "rayjeenah",
      toga: "tohgah",
      via: "veeah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class[latin.to_s]).to eq(pronounciation)
      end
    end
  end
end
