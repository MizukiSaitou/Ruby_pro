class User
end

user = User.new
puts user.class
# userはUserクラスのインスタンスか？
puts user.instance_of?(User)
# userはStringクラスのインスタンスか？
puts user.instance_of?(String)
# instance_of?はクラスがまったく同じでないとtrueにならない
puts user.instance_of?(Object)
# is_a?はis_a関係にあればtrueになる
puts user.is_a?(User)
puts user.is_a?(Object)
puts user.is_a?(BasicObject)
# is_a関係にない場合はfalse
puts user.is_a?(String)


class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end
product = Product.new('A great movie', 1000)
puts product.name
puts product.price
puts product.to_s

# DVDクラスはProductクラスを継承する
class DVD < Product
  # nameとpriceはスーパークラスでattr_reader認定されているから定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスにも存在している属性
    # @name = name
    # @price = price

    # スパークラスのinitiakixeメソッドを呼び出す
    super(name, price)
    # DVDクラス独自の属性
    @running_time = running_time
  end

  def to_s
    # superでスーパークラスのto_sメソッドを呼び出す
    "#{super}, running_time: #{running_time}"
  end
end
dvd = DVD.new('An awsome film', 3000, 100)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s


class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end
# Fooを継承したBarでもクラスメソッドのhelloが呼び出せる
puts Foo.hello
puts Bar.hello