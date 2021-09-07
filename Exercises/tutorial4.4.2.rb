class Word
  def palindrome?(string)
    string == string.reverse
  end
end

w = Word.new
puts w.palindrome?("foobar")
puts w.palindrome?("level")


class Word2 < String
  def palindrome?
    self == reverse
  end
end
s = Word2.new("level")
puts s.palindrome?
puts s.length


puts Hash.superclass
puts Symbol.superclass
puts Range.superclass