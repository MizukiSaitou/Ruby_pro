class Product
  # クラスインスタンス変数
  @@name = 'Product'

  def self.name
    # クラスインスタンス変数
    @@name
  end

  def initialize(name)
    # インスタンス変数
    @@name = name
  end

  def name
    # インスタンス変数
    @@name
  end
end
product = Product.new('A great movie')
puts product.name
puts Product.name

class DVD < Product
  @@name = 'DVD'

  def self.name
    # クラスインスタンス変数を参照
    @@name
  end

  def upcase_name
    # インスタンス変数を参照
    @@name.upcase
  end
end
puts Product.name
puts DVD.name

product = Product.new('A great movie')
puts product.name

dvd = DVD.new('An awsome film')
puts dvd.name
puts dvd.upcase_name

puts Product.name
puts DVD.name


# グローバル変数の宣言と値の代入
$program_name = 'Awesome program'
# グローバル変数に依存するクラス
class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

# $program_nameにはすでに名前が代入されている
puts Program.name

program = Program.new('Super program')
puts program.name

# Program.newのタイミングで$program_nameが"Super program"に変更される
puts Program.name
puts $program_name
