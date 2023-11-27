for count in 1..10 do
  if count == 5
    puts "next文の処理を実行します。"
    next
  end

  puts "ただいまは#{count}回目の繰り返し処理です。"
  if count == 8
    puts "break文の処理を実行します。"
    break
  end
end
puts "for文の処理を抜けました。" 