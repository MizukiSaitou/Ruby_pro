class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new('Alice', 20)


class Greeting
  # インスタンスメソッドの定義
  def hello
    "Hello!"
  end
end
greeting = Greeting.new
# インスタンスメソッドの呼び出し
puts greeting.hello


class UserSecond
  def initialize(name)
    # インスタンス作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    # インスタンス変数に保存されている名前を表示する
    "Hello, I am #{@name}."
  end
end
user = UserSecond.new('Alice')
puts user.hello

class UserThird
  def initialize(name)
    # インスタンス作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    # shuffled_nameはローカル変数
    shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = UserThird.new('Alice')
puts user.hello


class UserFourth
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  def name
    @name
  end

  # @nameを外部から変更するためのメソッド
  def name=(value)
    @name = value
  end
end
user = UserFourth.new('Alice')
# 変数に代入しているように見えるが、実際はname=メソッドを呼び出している
user.name = 'Bob'
puts user.name


class UserFifth
  def initialize(name)
    @name = name
  end

  # self.をつけるとクラスメソッドになる
  def self.create_users(names)
    names.map do |name|
      UserFifth.new(name)
    end
  end

  # インスタンスメソッド
  def hello
    "Hello, I am #{@name}"
  end
end
names = ['Alice', 'Bob', 'Carol']
# クラスメソッドの呼び出し
users = UserFifth.create_users(names)
users.each do |user|
  # インスタンスメソッドの呼び出し
  puts user.hello
end


class Product
  # デフォルトの価格を定数として定義する
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end
product = Product.new('A free movie')
puts product.price