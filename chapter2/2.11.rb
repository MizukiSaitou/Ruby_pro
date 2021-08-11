def default_args(a, b, c = 0, d = 0)
  puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_args(1, 2)
default_args(1, 2, 3)
default_args(1, 2, 3, 4)

# システム日時やほかのメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end
foo

# 空文字列であればtrue、そうでなければfalseを返す
puts ''.empty?
puts 'abc'.empty?

# 引数の文字列が含まれていればtrue、そうでなければfalseを返す
puts 'watch'.include?('at')
puts 'watch'.include?('in')

# 奇数ならtrue、偶数ならfalseを返す
1.even?
2.even?

# オブジェクトがnilであればtrue、そうでなければfalseを返す
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?

# 3の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)

a = 'ruby'

# upcaseだと変数aの値は変化しない
a.upcase
puts a

# upcase!だと変数aの値も大文字に変わる
a.upcase!
puts a

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s)
puts s