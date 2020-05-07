class CoinCombination

  def count(num)
    if num.class != Integer
      return "NO"
    end

    total_coin = 0
    total_quarter = 0
    total_dime = 0
    total_nickel = 0
    total_penny = 0
    until num == 0
      if num >= 25
        num -= 25
        total_quarter +=1
      elsif num >= 10
        num -= 10
        total_dime +=1
      elsif num >= 5
        num -= 5
        total_nickel +=1
      elsif num >= 1
        num -= 1
        total_penny +=1
      end
      
    end

    {
      quarter: total_quarter, 
      dime: total_dime, 
      nickel: total_nickel, 
      penny: total_penny
    }
  end



end

# num =51  remainder  1

