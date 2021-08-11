numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each {|n| new_numbers << n * 10}
puts new_numbers
print new_numbers
p new_numbers

numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map {|n| n * 10}
puts new_numbers
print new_numbers
p new_numbers

numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select {|n| n.even? }
puts even_numbers
print even_numbers
p even_numbers

numbers = [1, 2, 3, 4, 5, 6]
# 3の倍数を除外する（3の倍数以外を集める）
non_multiples_of_three = numbers.reject {|n| n % 3 == 0 }
puts non_multiples_of_three
print non_multiples_of_three
p non_multiples_of_three

numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が最初に真になった要素を返す
even_numbers = numbers.find {|n| n.even? }
puts even_numbers
print even_numbers
p even_numbers

numbers = [1, 2, 3, 4]
sum = 0
numbers.each {|n| sum += n}
puts sum
print sum
p sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) {|result, n| result + n}
puts sum
print sum
p sum

day_of_week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
week = day_of_week.inject('Sun') {|result, s| result + s}
puts week
print week
p week

# このコードは
p ['ruby', 'java', 'perl'].map {|s| s.upcase}
# こう書き換えられる
p ['ruby', 'java', 'perl'].map(&:upcase)

# このコードは
p [1, 2, 3, 4, 5, 6].select {|n| n.odd? }
# こう書き換えられる
p [1, 2, 3, 4, 5, 6].select(&:odd?)