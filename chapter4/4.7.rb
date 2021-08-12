a = [1, 2, 3, 4, 5]
p a[1, 3]

a = [1, 2, 3, 4, 5]
p a.values_at(0, 2, 4)

a = [1, 2, 3]
# 最後の要素を取得する
p a[a.size - 1]

a = [1, 2, 3]
# 最後の要素を取得する
p a[-1]
# 最後から2番目の要素を取得する
p a[-2]
# 最後から2番目の要素から2つの要素を取得する
p a[-2, 2]

a = [1, 2, 3]
p a.last
p a.last(2)
p a.first
p a.first(2)

a = [1, 2, 3]
a[-3] = -10
p a

a = [1, 2, 3, 4, 5]
# 2つめから3要素文を100で置き換える
a[1, 3] = 100
p a

a = []
a.push(1)
a.push(3, 5)
p a

a = [1, 2, 3, 1, 2, 3]
# 値が2である要素を削除する
a.delete(2)
p a

a = [1]
b = [2, 3]
a.concat(b)
# aは変更される（破壊的）
p a
# bは変更されない
p b

a = [1]
b = [2, 3]
a + b
p a + b
# aもbも変更されない（非破壊的）
p a
p b

a = [1, 2, 3]
b = [3, 4, 5]
p a | b
p a - b
p a & b


require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b


e, f = 100, 200, 300
p e
p f

e, *f = 100, 200, 300
p e
p f

a = []
p a.push(1)
# 2と3を一緒に追加する
p a.push(2, 3)

a = []
b = [2, 3]
p a.push(1)
# 配列をそのまま追加する(a.push([2, 3])と同じ)
p a.push(b)

a = []
b = [2, 3]
p a.push(1)
# 配列を*付きで追加する(a.push([2, 3])と同じ)
p a.push(*b)

def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end
p greeting('田中さん')
p greeting('田中さん', '鈴木さん')
p greeting('田中さん', '鈴木さん', '佐藤さん')

a = [1, 2, 3]
# []の中にそのまま配列を置くと配列の配列になる
p [a]
# *付きで配列を置くと展開されて別々の要素になる
p [*a]

a = [1, 2, 3]
p [-1, 0, *a, 4, 5]
p [-1, 0] + a + [4, 5]

p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [1, 2, 4]
p [1, 2, 3] == [1, 2]
p [1, 2, 3] == [1, 2, 3, 4]

# []で文字列の配列を作成する
p ['apple', 'melon', 'orange']
# %wで字列の配列を作成する(!で囲む場合)
p %w!apple melon orange!
# %wで字列の配列を作成する(丸カッコで囲む場合)
p %w(apple melon orange)
# 空白文字（スペースや改行）が連続した場合も1つの区切り文字と見なされる
p %w(
  apple
  melon
  orange
)

p %w(big\ apple small\ melon orange)

prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)

p 'Ruby'.chars
p 'Ruby,Java,Perl,PHP'.split(',')

# 要素が5つの配列を作成する
a = Array.new(5)
p a

# 要素が5つで0を初期値とする配列を作成する
a = Array.new(5, 0)
p a

# 要素が10で、1,2,3,1,2,3…と繰り返す配列を作る
a = Array.new(10){ |n| n % 3 +1}
p a

# ブロックを使って、ブロックの戻り値を初期値とする
a = Array.new(5){ 'default' } 
# a = Array.new(5, 'default')にすると5つ全てが一緒に変更される
p a
# 1番目の要素を取得する
str = a[0]
p str
# 1番目の要素を大文字にする（破壊的変更）
str.upcase!
p str
# 1番目の要素だけが大文字になり他は変わらない
p a


