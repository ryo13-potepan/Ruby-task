#モジュールを作成します
module CallHello
  def call_hello
    puts "こんにちは"
  end
end

class Introduction
  #CallHelloモジュールをMix-inしている
  include CallHello

  #このクラスのインスタンスが生成されるときに自動で実行される処理
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

#Introductionクラスのインスタンスを生成
introduction = Introduction.new("Ruby",25)

#Introductionクラスに混ぜ合わせたモジュールを呼び出す
introduction.call_hello()

introduction.call_name()
introduction.call_age()
