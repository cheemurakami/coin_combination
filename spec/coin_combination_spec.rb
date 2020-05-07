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
    expect(coin_combo.count(50)).to eq(2)
  end

  it("returns correct coins if only dimes") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(20)).to eq(2)
  end
  
  it("returns correct coins if only nickels") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(5)).to eq(1)
  end
  
  it("returns correct coins if only penny") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(3)).to eq(3)
  end

  it("returns correct coins if only penny") do
    coin_combo = CoinCombination.new
    expect(coin_combo.count(99)).to eq(9)
  end
end