def price_sum(priceA, priceB)
  total_price = 0
  total_price = priceA + priceB
  return total_price
end

target_priceA = 2000
target_priceB = 3000

return_price = price_sum(target_priceA, target_priceB)

puts "メソッドから返却された値は#{return_price}です"