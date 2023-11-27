require "csv" #CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i #ユーザーの入力値を取得し、数字へ変換しています

#if分を使用して続きを作成していきましょう。
#「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
  #ターミナルに入力したファイル名をfile_nameに格納
  file_name = gets.chomp

  puts "メモしたい内容を入力してください。"
  puts "Ctrl + Dで保存します。"

  #指定したファイル名のcsvを新規作成し、memo_contentに標準入力の内容を格納、csvにも格納する。
  CSV.open("#{file_name}.csv", "w") do |csv|
    memo_content = readlines(chomp:true)
    csv << memo_content
  end

elsif memo_type == 2 
  puts "既存のファイルにメモします。拡張子を除いて既存のファイル名を入力してください"
  #ターミナルに入力したファイル名をfile_nameに格納
  file_name = gets.chomp

  puts "メモしたい内容を入力してください。"
  puts "Ctrl + Dで保存します。"

  #指定したファイル名のcsvを編集モードで開き、memo_contentに入力内容を格納、csvにも格納する。
  CSV.open("#{file_name}.csv", "a") do |csv|
    memo_content = readlines(chomp:true)
    csv << memo_content
  end
  
  #memo_typeに1か2以外の数字が入力された場合、以下を表示
else
  puts "1か2の数字を入力してください"
end
