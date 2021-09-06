def yeller(str)
  yell = str.map {|i| i.upcase}.join
  puts yell
end
yeller(["o", "l", "d"])


def random_subdomain
  str = ('a'..'z').to_a
  puts str.shuffle[0..7].join
end
random_subdomain


def string_shuffle(s)
  puts s.split('').shuffle.join
end
string_shuffle("foobar")