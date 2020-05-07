class CoinCombination

  def count(num)
    if num.class != Integer
      return "NO"
    end

    total_coin = 0
    until num == 0
      if num >= 25
        num -= 25
        total_coin +=1
      elsif num >= 10
        num -= 10
        total_coin +=1
      elsif num >= 5
        num -= 5
        total_coin +=1
      elsif num >= 1
        num -= 1
        total_coin +=1
      end
      
    end
    total_coin
  end
end

# num =51  remainder  1

