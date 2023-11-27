puts "ジャンケン..."
puts "0(グー)/1(チョキ)/2(パー)/3(戦わない)"

#プレイヤーの手は０〜２でグーチョキパーいずれか、3の場合は戦わずジャンケンを終了する。
#入力した数字をplayer_handへ格納。
player_hand = gets.to_i

#敵の手はrandメソッドで引数に3を指定し、0から2までのいずれかの手をランダムにenemy_handへ格納する。
enemy_hand = rand(3)

#グーチョキパーの配列jankensを作成
jankens = ["グー", "チョキ", "パー"]

puts "あなたは:#{jankens[player_hand]}を出しました。"
puts "敵は#{jankens[enemy_hand]}を出しました。"