require 'algorithm_timer'

describe AlgorithmTimer do
  before(:each) do
    @timer = described_class.new
  end

  describe '#custom_reverse' do
    it "returns [1] when passed [1]" do
      expect(@timer.custom_reverse([1])).to eq([1])
    end

    it "returns [2, 1] when passed [1, 2]" do
      expect(@timer.custom_reverse([1, 2])).to eq([2, 1])
    end

    it "returns [3, 2, 1] when passed [1, 2, 3]" do
      expect(@timer.custom_reverse([1, 2, 3])).to eq([3, 2, 1])
    end
  end
end
