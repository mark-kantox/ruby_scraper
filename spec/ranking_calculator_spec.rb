require 'ranking_calculator'

describe RankingCalculator do

  historicRankings = [{:date => Date.new(2017, 6, 6), :reviews => 100, :ranking => 7},
                      {:date => Date.new(2017, 7, 6), :reviews => 102, :ranking => 3},
                      {:date => Date.new(2017, 8, 6), :reviews => 105, :ranking => 6}]  

  describe '.current' do
    context 'given a call' do
      it 'should return the last ranking in the array' do
        expect(RankingCalculator.current(historicRankings)).to eq 6
      end
    end
  end

  describe '.highest_rank' do
    context 'given a call' do
      it 'should return the highest ranking in the array' do
        expect(RankingCalculator.highest_rank(historicRankings)).to eq 3
      end
    end  
  end

  describe '.lowest' do
    context 'given a call' do
      it 'should return the lowest ranking in the array' do
        expect(RankingCalculator.lowest_rank(historicRankings)).to eq 7
      end
    end
  end

  describe '.average' do
    context 'when called' do
      it 'should calculate array average ranking' do
        expect(RankingCalculator.average(historicRankings)).to eq 16/3
      end
    end
  end
end