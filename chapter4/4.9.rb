sum = 0
# 処理を5回繰り返す。nには0,1,2,3,4が入る。
5.times {|n| sum += n}
p sum

sum = 0
5.times do |n|
  sum += n
end
p sum

a = []
10.upto(14){|n| a << n}
p a

a = []
14.downto(10){|n| a << n}
p a

a = []
1.step(10, 2){|n| a << n}
p a

a = []
10.step(1, -2){|n| a << n}
p a

a = []
while a.size < 5
  a << 1
end
p a

a = []
while a.size < 5 do a << 1 end
p a

a = []
a << 1 while a.size < 5
p a

a = []

while false
  # このコードは常に条件が偽になるので実行されない
  a << 1
end
p a

begin
  a << 1
end while false
p a

a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
p sum