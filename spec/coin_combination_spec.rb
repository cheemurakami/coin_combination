require("rspec")
require("coin_combination")
require("pry")

describe("coin_combination") do

  it("returns message when not an integer")do
    coin_combo = CoinCombination.new
    expect(coin_combo.count("a")).to eq("NO")
  end
  
  it("devides by 25") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(50)).to eq({
      quarter: 2, 
      dime: 0, 
      nickel: 0, 
      penny: 0
    })
  end

  it("returns correct coins if only dimes") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(20)).to eq({
      quarter: 0, 
      dime: 2, 
      nickel: 0, 
      penny: 0
    })
  end
  
  it("returns correct coins if only nickels") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(5)).to eq({
      quarter: 0, 
      dime: 0, 
      nickel: 1, 
      penny: 0
    })
  end
  
  it("returns correct coins if only penny") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(3)).to eq({
      quarter: 0, 
      dime: 0, 
      nickel: 0, 
      penny: 3
    })
  end

  it("returns correct coins if only penny") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(99)).to eq({
      quarter: 3, 
      dime: 2, 
      nickel: 0, 
      penny: 4
    })
  end
end