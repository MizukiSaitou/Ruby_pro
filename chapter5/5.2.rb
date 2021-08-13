currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# イタリアの通過を追加する
currencies['italy'] = 'euro'
p currencies

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# 既存の値を上書きする
currencies['japan'] = '円'
p currencies

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
p currencies['india']

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key, value|
  puts "#{key} : #{value}"
end

a = {'x' => 1, 'y' => 2, 'z' => 3}
# 全てのキーと値が同じであればtrue
b = {'x' => 1, 'y' => 2, 'z' => 3}
p a == b
# 並び順が異なっていてもキーと値が全て同じならtrue
c = {'z' => 3, 'y' => 2, 'x' => 1}
p a == c
# キー'x'の値が異なるのでfalse
d = {'x' => 10, 'y' => 2, 'z' => 3}
p a == d

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.delete('japan')
p currencies

