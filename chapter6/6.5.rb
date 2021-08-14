text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d(1,2)$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

# iオプションをつけると大文字小文字を区別しない
p 'HELLO' =~ /hello/i
# %rを使った場合も最後にオプションをつけられる
p 'HELLO' =~ %r(hello)i

regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

# mオプションがないと.は改行文字にマッチ
p "Hello\nBye" =~ /Hello.Bye/

# mオプションをつけると.が改行文字にもマッチする
p "Hello\nBye" =~ /Hello.Bye/m

regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE)
p "Hello\nBye" =~ regexp

# xオプションをつけたので改行やスペースが無視されコメントも書ける
regexp = /
  \d{3} #郵便番号の先頭3桁
  -     #区切り文字のハイフン
  \d{4} #郵便番号の末尾4桁
/x
p '123-4567' =~ regexp

regexp = /
  \d{3}
  \     #半角スペースで区切る
  \d{4}
/x
p '123 4567' =~ regexp

# バックスラッシュを特別扱いしないように'TEXT'を使う
pattern = <<'TEXT'
  \d{3} #郵便番号の先頭3桁
  -     #区切り文字のハイフン
  \d{4} #郵便番号の末尾4桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
p '123-4567' =~ regexp
# iオプションとmオプションを同時に使う
p "HELLO\nBYE" =~ /Hello.Bye/im

regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
p "HELLO\nBYE" =~ regexp

text = '私の誕生日は1977年7月17日です。'
# =~やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/
# MatchDataオブジェクトを取得する
p $~
# マッチした部分全体を取得する
p $&
# 1番目〜3番目のキャプチャを取得する
p $1
p $2
p $3
# 最後のキャプチャ文字列を取得する
p $+

text = '私の誕生日は1977年7月17日です。'
# =~演算子などを使うとマッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/
# MatchDataオブジェクトを取得する
p Regexp.last_match
# マッチした部分全体を取得する
p Regexp.last_match(0)
# 1番目〜3番目のキャプチャを取得する
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)
# 最後のキャプチャ文字列を取得する
p Regexp.last_match(-1)

# マッチすればtrueを返す
p /\d{3}-\d{4}/.match?('123-4567')
# マッチしても組み込み変数やRegexp.last_matchを書き換えない
# （すでにどこかで=~やtatchを使っていた場合はその時に設定された値になる）
p $~
p Regexp.last_match
# 文字列と正規表現を入れ替えてもOK
p '123-4567'.match?(/\d{3}-\d{4}/)