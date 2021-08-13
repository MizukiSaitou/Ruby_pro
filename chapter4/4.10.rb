# shuffleメソッドで配列の要素をランダムに並び替える
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  # 5が出たら繰り返しを脱出する
  break if n == 5
end

numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  # 配列の数字をランダムに入れ替え3が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    # numbersのループは脱出するがfruitsのループは継続する
    break if n == 3
  end
end

puts "next"

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
      # 全ての繰り返し処理を脱出する
       throw :done
      end
    end
  end
end

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  # 偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
    puts n
end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    # 繰り返し処理が入子になっている場合は一番内側のループだけが中断される
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end

foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ =>"
  # sampleは配列からランダムに1要素を取得するメソッド
  answer = ['はい', 'いいえ'].sample
  puts answer

  # はいと答えなければもう一度聞き直す
  redo unless answer == 'はい'
end