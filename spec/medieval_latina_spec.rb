RSpec.describe MedievalLatina do
  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe "#pronounce" do
    {
      ambulo: "ahmbooloh",
      via: "veeah",
      deus: "dayoos",
      toga: "tohgah",
      luna: "loonah"
    }.each do |latin, pronounciation|
      it "pronounces '#{latin}' as '#{pronounciation}'" do
        expect(described_class.new(latin.to_s).pronounce).to eq(pronounciation)
      end
    end
  end
end
