s = 'Hello'
puts s.length
puts s.size

class User
  def hello
    'Hello'
  end
  # helloメソッドのエイリアスメソッドとしてgreetingを定義する
  alias greeting hello
end
user = User.new
puts user.hello
puts user.greeting

class UserNest
  class BloodType
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end
blood_type = UserNest::BloodType.new('B')
puts blood_type.type


class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      # 商品コードが一致すれば同じProductとみなす
      code == other.code
    else
      # otherがProductでなければ常にfalse
      false
    end
  end
end
# aとbが同じ商品コード
a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awsome film')
c = Product.new('A-0001', 'A great movie')

# 商品コードが一致すればtrueになる
puts a == b
puts a == c

# Product以外の比較はfalse
puts a == 1
puts a == 'a'


# equal?　object_idが等しい場合にtrueを返す
a = 'abc'
b = 'abc'
puts a.equal?(b)

# ==　オブジェクトの内容が等しいかどうか判断します
puts 1 == 1.0

# eql? ハッシュのキーとして2つのオブジェクトが等しいかどうか判断する
# ハッシュ上では1と1.0は別々のキーとして扱われる
h = {1 => 'Integer', 1.0 => 'Float'}
puts h[1]
puts h[1.0]
# 異なるキーとして扱われるのは、eql?メソッドで比較したときにfalseになるため
puts 1.eql?(1.0)

a = 'japan'
b = 'japan'
# eql?が真なら、hash値も同じ
puts a.eql?(b)
puts a.hash
puts b.hash
c = 1
d = 1.0
# eql?が偽なら、hash値も異なる
puts c.eql?(d)
puts c.hash
puts d.hash


# === case文のwhen節で使われる
text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

value = [1, 2, 3]
# 内部的には String === value, Array === value, Hash === valueの結果が評価されている
case value
when String
  puts '文字列です'
when Array
  puts '配列です'
when Hash
  puts 'ハッシュです'
end


# Stringクラスを継承した独自クラスを定義する
class MyString < String
  # Stringクラスを拡張するためのコードを書く
end
s = MyString.new('Hello')
puts s
puts s.class

# Arrayクラスを継承した独自クラスを定義する
class MyArray < Array
  # Arrayクラスを拡張するためのコードを書く
end
a = MyArray.new()
a << 1
a << 2
puts a
puts a.class

class String
  # 文字列をランダムにシャッフルする
  def shuffle
    chars.shuffle.join
  end
end
s = 'Hello, I am Alice.'
puts s.shuffle


# 以下のUserSecondクラスは外部ライブラリで定義されている想定
class UserSecond
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}!"
  end
end
# モンキーパッチをあてる前の挙動を確認する
user = UserSecond.new('Alice')
puts user.hello
# helloメソッドにモンキーパッチをあてて独自の挙動を持たせる
class UserSecond
  def hello
    "#{@name}さん、こんにちは！"
  end
end
# メソッドの定義を上書きしたのでhelloメソッドの挙動が変わっている
puts user.hello


# 以下のUserThirdクラスは外部ライブラリで定義されている想定
class UserThird
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end
# モンキーパッチをあてるためにUserThirdクラスを再オープンする
class UserThird
  # 既存のhelloメソッドはhello_originalとして呼び出せるようにしておく
  alias hello_original hello

  # helloメソッドにモンキーパッチをあてる（元々実装されていたhelloメソッドも利用する）
  def hello
    "#{hello_original}じゃなくて、#{@name}さん、こんにちは！"
  end
end
# モンキーパッチをあてたhelloメソッドの挙動を確認する
user = UserThird.new('Alice')
puts user.hello

alice = 'I am Alice.'
# aliceというオブぇくとに特異メソッドを追加するもうひとつの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
puts alice.shuffle

