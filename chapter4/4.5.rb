range = 1..5
p range.include?(0)
p range.include?(1)
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

range = 1...5
p range.include?(0)
p range.include?(1)
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

a = [1, 2, 3, 4, 5]
# 2番目から4番目までの要素を取得する
p a[1..3]

a = 'abcdef'
# 2文字目から4文字目までを抜き出す
p a[1..3]


# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)


def charge(age)
  case age
  # 0歳から5歳までの場合
  when 0..5
    0
  # 6歳から12歳までの場合
  when 6..12
    300
  # 13歳から18歳までの場合
  when 13..18
    600
  # それ以外の場合
  else
    1000
  end
end
p charge(3)
p charge(12)
p charge(16)
p charge(25)

p (1..5).to_a
p (1...5).to_a

p ('a'..'e').to_a
p ('a'...'e').to_a

# splat展開
p [*1..5]
p [*1...5]

# 範囲オブジェクトを配列に変換してから繰り返しを行う
numbers = (1..4).to_a
sum = 0
numbers.each {|n| sum += n}
p sum

sum = 0
# 範囲オブジェクトに対して直接eachメソッドを呼び出す
(1..4).each {|n| sum += n}
p sum

numbers = []
# 1から10まで2つ飛ばしで繰り返し処理を行う
(1..10).step(2) {|n| numbers << n}
p numbers