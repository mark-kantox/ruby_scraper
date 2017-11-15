class RankingCalculator

  def self.current(rankings_array)
    rankings_array.last[:ranking]
  end

  def self.highest(rankings_array)
    item = rankings_array.reduce do | memo, ranking |
      memo[:ranking] < ranking[:ranking] ? memo : ranking
    end
    item
  end

  def self.highest_rank(rankings_array)
    self.highest(rankings_array)[:ranking]
  end

  def self.lowest(rankings_array)
    item = rankings_array.reduce do | memo, ranking |
      memo[:ranking] > ranking[:ranking] ? memo : ranking
    end
      item
  end

  def self.lowest_rank(rankings_array)
    self.lowest(rankings_array)[:ranking]
  end

  def self.average(rankings_array)
    rankings = rankings_array.map do | item |
      item[:ranking]
    end
    total = rankings.reduce do | avg, curr |
      avg += curr
    end
    total / rankings.length
  end
end