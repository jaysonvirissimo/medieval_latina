RSpec.describe MedievalLatina do
  subject { described_class.new(text) }

  it "has a version number" do
    expect(MedievalLatina::VERSION).not_to be nil
  end

  describe '#pronounce' do
    context 'via' do
      let(:text) { 'via' }

      it { expect(subject.pronounce).to eq("vee-ah")}
    end
  end
end
