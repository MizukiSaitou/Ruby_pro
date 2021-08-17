class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッドを呼ぶ
    "Hello, I am #{name}."
  end

  def hi
    # selfつきでnameメソッドを呼ぶ
    "Hi, I am #{self.name}."
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    "My name is #{@name}."
  end
end
user = User.new('Alice')
puts user.hello
puts user.hi
puts user.my_name


class UserChange
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # メソッド内でセッターメソッド（name=など）を呼び出す場合はselfを必ずつける！
    self.name = 'Bob'
  end

  def rename_to_carol
    # 直接インスタンス変数を書き換える
    @name = 'Carol'
  end
end
user = UserChange.new('Alice')
puts user.name
puts user.rename_to_bob
puts user.rename_to_carol


class Foo
  # ※このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end

Foo.bar

foo = Foo.new
foo.baz


class Hello
  # クラス定義が読み込まれたタイミングで"HELLO!"を3回出力する
  3.times do
    puts 'Hello!'
  end
end


class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 金額を形成するクラスメソッド
  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    # インスタンスメソッドからクラスメソッドを呼び出す
    format_price = Product.format_price(price)
    "name: #{name}, price: #{format_price}"
  end
end
product = Product.new('Agreat movie', 1000)
puts product.to_s