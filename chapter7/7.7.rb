class Product
  private
  # これはprivateメソッド
  def name
    'A great movie'
  end
end

class DVD < Product
  def to_s
    # nameはスーパークラスのprivateメソッド
    "name: #{name}"
  end
end
dvd = DVD.new
# 内部でスーパークラスのprivateメソッドを呼んでいるがエラーにならない
puts dvd.to_s

class ProductSecond
  def to_s
    # nameは常に"A great movie"になるとは限らない
    "name: #{name}"
  end

  private

  def name
    'A great movie'
  end
end

class DVDSecond < ProductSecond
  private

  # スーパークラスのprivateメソッドをオーバーライドする
  def name
    'An awsome film'
  end
end
product = ProductSecond.new
# ProductSecondクラスのnameメソッドが使われる
puts product.to_s

dvd = DVDSecond.new
# オーバーライドされたDVDSecondクラスのnameメソッドが使われる
puts dvd.to_s


class User
  # weightは外部に公開しない
  attr_reader :name

  def  initialize(name, weight)
    @name = name
    @weight = weight
  end

  # 自分がother_userより思い場合はtrue
  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected

  # protectedメソッドなので同じクラスがサブクラスであればレシーバ付きで呼び出せる
  def weight
    @weight
  end
end
alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

# 同じクラスのインスタンスメソッド内であればweightが呼び出せる
puts alice.heavier_than?(bob)
puts bob.heavier_than?(alice)