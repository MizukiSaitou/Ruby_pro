# キーがなければhelloを返す
h = Hash.new('hello')
a = h[:foo]
b = h[:bar]

# 変数aと変数bは同一オブジェクト
p a.equal?(b)

# 変数aに破壊的な変更を適用すると変数bの値も一緒に変わってしまう
a. upcase!
p a
p b
p h
# ハッシュ自身は空のまま


h = Hash.new{ |hash, key| hash[key] = 'hello' }
p h[:foo]
p h[:bar]
p h

p :'12345'
p :'ruby-is-fun'
p :'ruby is fun'
p :'()'

name = 'Alice'
p :"#{name.upcase}"

# "文字列: 値"の形式で書くとキーがシンボルになる
p hash = { 'abc': 123}

# !を区切り文字に使う
p %s!ruby is fun!

# ()を区切り文字に使う
p %s(ruby is fun)

p %i(apple orange melon)

name = 'Alice'
# %iでは改行文字や式展開の構文がそのままシンボルになる
p %i(hello\ngood-bye #{name.upcase})
# %Iでは改行文字や式展開が有効になったうえでシンボルが作られる

string = 'apple'
symbol = :apple
p string.to_sym
p string.to_sym == symbol

string = 'apple'
symbol = :apple
p symbol.to_s
p string == symbol.to_s
p string + symbol.to_s

# respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)

# 文字列に'pp'が含まれるか調べる
p 'apple'.include?('pp')