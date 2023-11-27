def janken
  puts "ジャンケン..."
  puts "0(グー), 1(チョキ), 2(パー), 3(戦わない)"

  #プレイヤーの手は０〜２でグーチョキパーいずれか、3の場合は戦わずジャンケンを終了する。
  #入力した数字をplayer_handへ。
  player_hand = gets.to_i

  #敵の手はrandメソッドで0から2までのいずれかの手をランダムに選択する。
  enemy_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]
  directions = ["上", "下", "左", "右"]

  puts "ポン！"
  puts "--------------------------------------------"
  puts "あなたは#{jankens[player_hand]}を出しました。"
  puts "敵は#{jankens[enemy_hand]}を出しました。"
  puts "--------------------------------------------"

  if player_hand == enemy_hand
    puts "あいこで..."
    return true
  elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
    puts "自分：「あっちむいて...」"
    puts "0(上), 1(下), 2(左), 3(右)"

    player_direction = gets.to_i
    enemy_direction = rand(4)

    puts "ほい！"
    puts "--------------------------------------------"
    puts "あなたは#{directions[player_direction]}を指差しました。"
    puts "敵は#{directions[enemy_direction]}を向きました。"
    puts "--------------------------------------------"

    if player_direction == enemy_direction
      puts "あなたはこの戦いに勝利しました！"
      return false

    else
      puts "もう一度！"
      return true
    end

  else
    puts "敵：「あっちむいて...」"
    puts "0(上), 1(下), 2(左), 3(右)"

    player_direction = gets.to_i
    enemy_direction = rand(4)

    puts "ほい！"
    puts "--------------------------------------------"
    puts "あなたは#{directions[player_direction]}を向きました。"
    puts "敵は#{directions[enemy_direction]}を指差しました。"
    puts "--------------------------------------------"

    if player_direction == enemy_direction
      puts "あなたはこの戦いに敗北しました..."
      return false

    else
      puts "もう一度！"
      return true
    end
  end
end

next_game = true

while next_game
  next_game = janken
end
