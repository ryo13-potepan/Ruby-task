users = {
  name: "Takuya",
  height: 175,
  weight: 60,
  gender: "男"
}

#ハッシュを出力する
p users
puts "-----------"

#usersハッシュに:telで新たにオブジェクトを追加する
users[:tel] = "08012345678"

#ハッシュを出力
p users
puts "-----------"

#ハッシュの要素を削除する
users.delete(:weight)

#ハッシュを出力
p users