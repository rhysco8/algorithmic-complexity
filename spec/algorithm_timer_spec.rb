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

  describe '#time_algorithm' do
    describe "displays timings for chosen method" do
      it ".reverse" do
        table_of_timings = /\A5000: \d+\.?\d(e-\d+|\d*)\n10000: \d+\.?\d(e-\d+|\d*)\n15000: \d+\.?\d(e-\d+|\d*)\n20000: \d+\.?\d(e-\d+|\d*)\n25000: \d+\.?\d(e-\d+|\d*)\n30000: \d+\.?\d(e-\d+|\d*)\n35000: \d+\.?\d(e-\d+|\d*)\n40000: \d+\.?\d(e-\d+|\d*)\n45000: \d+\.?\d(e-\d+|\d*)\n50000: \d+\.?\d(e-\d+|\d*)\n55000: \d+\.?\d(e-\d+|\d*)\n60000: \d+\.?\d(e-\d+|\d*)\n65000: \d+\.?\d(e-\d+|\d*)\n70000: \d+\.?\d(e-\d+|\d*)\n75000: \d+\.?\d(e-\d+|\d*)\n80000: \d+\.?\d(e-\d+|\d*)\n85000: \d+\.?\d(e-\d+|\d*)\n90000: \d+\.?\d(e-\d+|\d*)\n95000: \d+\.?\d(e-\d+|\d*)\n100000: \d+\.?\d(e-\d+|\d*)\n/
        expect{ @timer.time_algorithm('reverse') }.to output(table_of_timings).to_stdout
      end
    end
  end
end
