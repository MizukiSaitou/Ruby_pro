puts '1'.to_s
puts 1.to_s
puts nil.to_s
puts true.to_s
puts false.to_s
# 正規表現
puts /\d+/.to_s

puts 1.to_s()
puts 1.to_s
# 数値を16進数の文字列に変更する
puts 10.to_s(16)
puts 10.to_s 16

# ダブルクォートで囲むと\nが改行文字として機能する
puts "こんにちは\nさようなら"

name = 'Alice'
puts "Hello,#{name}!"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"