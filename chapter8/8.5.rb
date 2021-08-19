module Taggable
  def price_tag
    # priceメソッドはinclude先で定義されているはず、という前提
    "#{price}円"
  end
end

class Product
include Taggable

  def price
    1000
  end
end
product = Product.new
puts product.price_tag


puts Array.include?(Enumerable)
puts Hash.include?(Enumerable)
puts Range.include?(Enumerable)


# 配列、ハッシュ、範囲でmapメソッドを使う
p [1, 2, 3].map {|n| n * 10}
p (1..3).map {|n| n * 10}
# 配列、ハッシュ、範囲でcountメソッドを使う
p [1, 2, 3].count
p (1..3).count


class Tempo
include Comparable

attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end
  # <=>はComparableモジュールで使われる演算子（メソッド）
  def <=>(other)
    if other.is_a?(Tempo)
      # bom同士を<=>で比較した結果を返す
      bpm <=> other.bpm
    else
      # 比較できない場合はnilを返す
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end
t_120 = Tempo.new(120)
t_180 = Tempo.new(180)
puts t_120 > t_180
puts t_120 <= t_180
puts t_120 == t_180
tempos = [Tempo.new(180), Tempo.new(120), Tempo.new(60)]
# sortメソッドの内部では並び替えの際に<=>演算子が使われる
p tempos.sort


module NameChanger
  def change_name
    # include先のクラスのインスタンス変数を変更する
    @name = 'ありす'
  end
end

class User
include NameChanger

  attr_reader :name

  def initialize(name)
    @name = name
  end
end
user = User.new('alice')
puts user.name
# モジュールで定義したメソッドでインスタンス変数を書き換える
user.change_name
puts user.name