class String
  def palindrome?
    self == self.reverse
  end
end
puts "racecar".palindrome?
puts "onomatopoeia".palindrome?
puts "Malayalam".downcase.palindrome?


class String
  def shuffle
    self.split('').shuffle.join
   end
end
puts "foobar".shuffle