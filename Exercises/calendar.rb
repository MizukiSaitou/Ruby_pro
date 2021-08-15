# Dateクラスを使ってを使って、今月の１日と月末の日付と曜日を求め、カレンダーを表示させてください。

require 'date'

today = Date.today
p today
p today - 1
p today.year
p today.mon
p today.mday
p today.wday
p today.strftime('%a')

this_month = Date.new(2021, 8, 1)
week = this_month.wday
# 1日の曜日

if week == 0
  puts '日'
elsif week == 1
  puts '月'
elsif week == 2
  puts '火'
elsif week == 3
  puts '水'
elsif week == 4
  puts '木'
elsif week == 5
  puts '金'
else 
  puts '土'
end

weeks = ["日", "月", "火", "水", "木", "金", "土"]
puts "#{weeks[week]}"

# 月末の日付と曜日
this_month = Date.new(2021, 8, -1)
puts this_month
week = this_month.wday
weeks = ["日", "月", "火", "水", "木", "金", "土"]
puts "#{weeks[week]}"



# 【カレンダー作成】
first_day = Date.new(2021, 8, 1)
last_day = Date.new(2021, 8, -1)
# 1日の曜日を表示
first_day_week = first_day.wday
month = first_day.strftime("%B %Y年")
# %wで文字列の配列を作成する
week = %w(Su Mo Tu We Th Fr Sa)

# centerメソッドは引数の数が文字数となりそれに沿って中央揃い
puts month.center(20)
# weekの,を消して表示
puts week.join(" ")
# 1日の曜日までの空白を表示
print " " * first_day_week

days = (first_day..last_day).to_a
days.each do |day|
  # 右寄せする
  print day.strftime("%d").to_s.rjust(2) + " "

  week_day = first_day_week +=1
  # スタートした曜日から繰り返し処理で1を足していき7の倍数になったら改行
  if week_day%7 == 0
    print "\n"
  end
end
if first_day_week%7 != 0
  print "\n"
end

