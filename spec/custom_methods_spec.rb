require 'custom_methods'

describe CustomMethods do
  let(:dummy_class) { Class.new { extend CustomMethods } }

  describe '#custom_reverse' do
    it "returns [1] when passed [1]" do
      expect(dummy_class.custom_reverse([1])).to eq([1])
    end

    it "returns [2, 1] when passed [1, 2]" do
      expect(dummy_class.custom_reverse([1, 2])).to eq([2, 1])
    end

    it "returns [3, 2, 1] when passed [1, 2, 3]" do
      expect(dummy_class.custom_reverse([1, 2, 3])).to eq([3, 2, 1])
    end
  end

  describe '#custom_shuffle' do
    it "returns [1] when passed [1]" do
      expect(dummy_class.custom_shuffle([1])).to eq([1])
    end
  end
end
