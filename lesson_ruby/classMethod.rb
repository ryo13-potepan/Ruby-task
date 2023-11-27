class BirthCelebration
  #クラス変数
  @@people_count = 0

  #クラスメソッドを追加
  def self.show_count
    puts "今日は#{@@people_count}人が誕生日でした。"
  end

  def initialize(name, age)
    @name = name
    @age = age
    #インスタンス生成ごとにカウントアップ
    @@people_count += 1
  end
  
  def celebrate
    puts "#{@name}さん、#{@age}歳の誕生日おめでとう！"
  end
end

john = BirthCelebration.new("ジョン",20)
john.celebrate

michael = BirthCelebration.new("マイケル",25)
michael.celebrate

BirthCelebration.show_count()