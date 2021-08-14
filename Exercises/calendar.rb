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

# カレンダー作成
first_day = Date.new(2021, 8, 1)
last_day = Date.new(2021, 8, -1)

