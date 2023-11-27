animals = ["パンダ","コアラ","カンガルー"]
 
puts animals[0]
puts animals[1]
puts animals[2]

puts "---------------"

animals[1] = "キリン"

puts animals[0]
puts animals[1]
puts animals[2]

animals << "ライオン"
animals.push("シマウマ")

animals.delete_at(0)
puts animals