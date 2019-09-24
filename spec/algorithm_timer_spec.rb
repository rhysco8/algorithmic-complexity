require 'algorithm_timer'

describe AlgorithmTimer do
  before(:each) do
    @timer = described_class.new
  end

  describe '#time_algorithm' do
    let(:table_of_timings) {/\A5000: \d+\.?\d(e-\d+|\d*)\n10000: \d+\.?\d(e-\d+|\d*)\n15000: \d+\.?\d(e-\d+|\d*)\n20000: \d+\.?\d(e-\d+|\d*)\n25000: \d+\.?\d(e-\d+|\d*)\n30000: \d+\.?\d(e-\d+|\d*)\n35000: \d+\.?\d(e-\d+|\d*)\n40000: \d+\.?\d(e-\d+|\d*)\n45000: \d+\.?\d(e-\d+|\d*)\n50000: \d+\.?\d(e-\d+|\d*)\n55000: \d+\.?\d(e-\d+|\d*)\n60000: \d+\.?\d(e-\d+|\d*)\n65000: \d+\.?\d(e-\d+|\d*)\n70000: \d+\.?\d(e-\d+|\d*)\n75000: \d+\.?\d(e-\d+|\d*)\n80000: \d+\.?\d(e-\d+|\d*)\n85000: \d+\.?\d(e-\d+|\d*)\n90000: \d+\.?\d(e-\d+|\d*)\n95000: \d+\.?\d(e-\d+|\d*)\n100000: \d+\.?\d(e-\d+|\d*)\n/}

    context "displays timings for chosen method" do
      it ".reverse" do
        expect{ @timer.time_algorithm('reverse') }.to output(table_of_timings).to_stdout
      end

      it ".last" do
        expect{ @timer.time_algorithm('last') }.to output(table_of_timings).to_stdout
      end

      it ".shuffle" do
        expect{ @timer.time_algorithm('shuffle') }.to output(table_of_timings).to_stdout
      end

      it ".sort" do
        expect{ @timer.time_algorithm('sort') }.to output(table_of_timings).to_stdout
      end

      it "#custom_reverse" do
        expect{ @timer.time_algorithm('custom_reverse') }.to output(table_of_timings).to_stdout
      end
    end
  end
end
