# ログ出力用のメソッドを提供するモジュール
module Loggable
  # logメソッドはprivateメソッドにする
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上で作ったモジュールをincludeする
 include Loggable

  def title
    # logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called'
    'A great movie'
  end
end

class User
  # こちらも同じようにincludeする
  include Loggable

  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called'
    'Alice'
  end
end
product = Product.new
puts product.title

user = User.new
puts user.name


module LoggableSecond
  def log(text)
    puts "[LOG] #{text}"
  end
end

class ProductSecond
  # モジュールのメソッドを特異メソッド（クラスメソッド）としてミックスインする
 extend LoggableSecond

 def self.create_products(names)
  # モジュールのメソッドを特異メソッド内で呼び出す（logメソッド自体もクラスメソッドになっている）
  log 'create_products is called'
 end
end
# クラスメソッド経由でlogメソッドが呼び出される
ProductSecond.create_products([])
# ProductSecondクラスのクラスメソッドとして直接呼び出すことも可能
ProductSecond.log('Hello.')