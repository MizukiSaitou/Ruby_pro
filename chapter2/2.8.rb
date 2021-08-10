# %q! !はシングルクォートで囲んだことと同じになる
puts %q!He said, "Don't speak."!

# %Q! !はダブルクォートで囲んだことと同じになる
something = "Hello."
puts %Q!He said,"#{something}"!

# %! !もダブルクォ–トで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!

# ?を区切り文字として使う
puts %q?He said, "Don't speak."?

a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a

a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

# 数値を文字列に変換する
puts 123.to_s

# 配列を連結して1つの文字列にする
puts [10, 20, 30].join

# *演算子を使って文字列を繰り返す
puts 'Hi!' * 10

