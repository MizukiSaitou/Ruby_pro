# 2進数
puts 0b11111111

# 8進数
puts 0377

# 16進数
puts 0xff

def greeting(country)
  # countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return puts 'countryを入力してください'

  if country == 'japan'
    puts 'こんにちは'
  else
    puts 'Hello'
  end
end
greeting(nil)
greeting('japaan')

status = 'error'
if status != 'ok'
  puts '何か異常があります'
end

status = 'error'
unless status == 'ok'
  puts '何か異常があります'
end

status = 'ok'
unless status == 'ok'
  puts '何か異常があります'
else
  puts '正常です'
end

country = 'italy'
case country
when 'japan'
  puts 'こんにちは'
when 'us'
  puts 'Hello'
when 'italy'
  puts 'ciao'
else
  puts '???'
end

country = 'アメリカ'
case country
when 'japan', '日本'
  puts 'こんにちは'
when 'us', 'アメリカ'
  puts 'Hello'
when 'italy', 'イタリア'
  puts 'ciao'
else
  puts '???'
end

n = 11
puts n > 10 ? '10より大きい' : '10以下'

n = 11
message = n > 10 ? '10より大きい' : '10以下'
puts message