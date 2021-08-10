def add(a, b)
  a + b
end
puts add(7, 2)

def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
puts greeting('japan')
puts greeting('us')

def fizz_buzz(n)
  if n % 15 == 0
    puts 'FizzBuzz'
  elsif n % 3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  else
    puts n.to_s
  end
end
 fizz_buzz(1)