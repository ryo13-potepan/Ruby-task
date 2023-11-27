number = 100
p number

#number変数に文字列オブジェクトに変換をして自身に代入をし直す
number = number.to_s
p number
puts "Rubyは" + number +"点です。"

#number変数に数値オブジェクトに変換をして自身に代入をし直す
number = number.to_i
p number
puts "------------------------------------------------"

number1 = 100
number2 = 200

number1 = number1.to_s
puts "＋を使って文字列を連結"
p "Rubyは" + number1 + "点ですよね！"

puts "------------------------------------------------"

puts "変数展開を使用"
p "Rubyは#{number2}点ですよね！"

puts "------------------------------------------------"

puts "変数展開の中では数値の計算も可能"
p "Rubyは#{number2 + 100}点ですよね！"
