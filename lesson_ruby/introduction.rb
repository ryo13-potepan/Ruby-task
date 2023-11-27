#名前と年齢を変数としてもたせる
# 「私の名前は〇〇です。よろしくお願いします！」と表示されるメソッドを作成する
# 「〇〇歳です！」と表示されるメソッドを作成する

#クラス定義
class Introduction
  def initialize(name, age)
    @name = name
    @age = age
  end

  def call_name
    puts "私の名前は#{@name}です。よろしくお願いします！"
  end

  def call_age
    puts "#{@age}歳です！"
  end
end


#introductionクラスのインスタンスを生成しtaroという変数に代入
taro = Introduction.new("Taro",25)
taro.call_name()
taro.call_age()

introduction.call_name()
introduction.call_age()
