#booksハッシュにオプジェクトを格納する
books = {
  title: "Rubyでハッシュを学ぼう!",
  company: "プログラミングを学ぶ社",
  page: 321,
  price: 2980
}
#booksハッシュに格納された要素を確認する
p books

#ハッシュにキーを指定して出力をする
puts books[:title]
puts books[:price]

#booksハッシュのキーがtitleのオブジェクトを更新する
books[:title] = "Rubyで配列を作ろう！"
#booksハッシュのキーがpriceのオブジェクトを更新する
books[:price] = 3800

#ハッシュにキーを指定して出力をする
puts books[:title]
puts books[:price]