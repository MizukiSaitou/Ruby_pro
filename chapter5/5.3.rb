p :apple.class
p 'apple'.class

# ハッシュのキーをシンボルにする
currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
# シンボルを使って値を取り出す
p currencies[:us]
currencies[:italy] = 'euro'
p currencies

person = {
  # 値が文字列
  name: 'Alice',
  # 値が数値
  age: 20,
  # 値が配列
  friends: ['Bob', 'Carol'],
  # 配列がハッシュ
  phones: {home: '1234-0000', mobile: '5678-0000'}
}
p person[:age]
p person[:friends]
p person[:phones][:mobile]
p person[:phones][:home]