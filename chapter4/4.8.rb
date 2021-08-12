fruits = ['apple', 'orange', 'melon']
# ブロック引数のiには0,1,2…と要素の添字が入る
fruits.each_with_index{ |fruit, i| puts "#{i}: #{fruit}"}

fruits = ['apple', 'orange', 'melon']
# mapとして処理しつつ、添字も受け取る
p fruits.map.with_index{ |fruit, i| "#{i}: #{fruit}" }

fruits = ['apple', 'orange', 'melon']
# 名前にaを含み、なおかつ添字が奇数である要素を削除する
p fruits.delete_if.with_index{ |fruit, i| fruit.include?('a') && i.odd? }

fruits = ['apple', 'orange', 'melon']
# ブロックなしでメソッドを呼ぶとEnumeratorオブジェクトが返る。よってwith_indexメソッドが呼び出せる。
p fruits.each
p fruits.map
p fruits.delete_if

fruits = ['apple', 'orange', 'melon']
# eachで繰り返しつつ1から始まる添字を取得する
fruits.each.with_index(1){ |fruit, i| puts "#{i}: #{fruit}" }
# mapで処理しつつ10から始まる添字を取得する
p fruits.map.with_index(10){ |fruit, i| "#{i}: #{fruit}" }

dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]
# 面積の計算結果を格納する配列
areas = []
# ブロック引数が1個であればブロック引数の値が配列になる
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
p areas

dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]
# いったん配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]
# ブロック引数を{}で囲んで配列の要素を別々の引数として受け取る
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

name = ['田中', '鈴木', '中村']
san_name = name.map do |name|
  "#{name}さん"
end
p san_name.join('と')

name = ['田中', '鈴木', '中村']
san_name = name.map{|name| "#{name}さん"}
p san_name.join('と')