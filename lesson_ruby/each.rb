#配列を用意する
users = ["munakata", "oyama", "hongou"]

#each文で繰り返しをする。
users.each do |user|
  puts "ただいま格納されている値は「#{user}」です。"
end

puts "--------------"

#ハッシュを用意する

books = {
  "title" => "eachメソッドを使ってみた！",
  "price" => "3980",
  "page" => "250",
  "release_date" => "2020-09-20"
}

#each文で繰り返しをする
books.each do |key, value| 
  puts "キー名は#{key}で、ペアとなっている値は#{value}です。"
end