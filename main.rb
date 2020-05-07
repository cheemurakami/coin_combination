require("./lib/coin_combination")
#!/usr/bin/env ruby
puts 'cent amount?'
cent_amount = gets.chomp.to_i
coin_combo = CoinCombination.new
coin_combo.count(cent_amount)
puts "total coin: #{coin_combo.count(cent_amount)}"