require 'custom_methods'

describe CustomMethods do
  let(:dummy_class) { Class.new { include CustomMethods } }
  let(:dummy_class_instance) { dummy_class.new }

  describe '#custom_reverse' do
    it "returns [1] when passed [1]" do
      expect(dummy_class_instance.custom_reverse([1])).to eq([1])
    end

    it "returns [2, 1] when passed [1, 2]" do
      expect(dummy_class_instance.custom_reverse([1, 2])).to eq([2, 1])
    end

    it "returns [3, 2, 1] when passed [1, 2, 3]" do
      expect(dummy_class_instance.custom_reverse([1, 2, 3])).to eq([3, 2, 1])
    end
  end

  describe '#custom_shuffle' do
    it "returns [1] when passed [1]" do
      expect(dummy_class_instance.custom_shuffle([1])).to eq([1])
    end

    it "returns shuffled array when passed [1, 2, 3, 4]" do
      expect(dummy_class_instance.custom_shuffle([1, 2, 3, 4])).to_not eq([1, 2, 3, 4])
    end
  end
end
