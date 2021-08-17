def title
  ['B', 'I', 'N', 'G', 'O'].join('|')
end
puts title

b = (1..15).to_a.sample
i = (16..30).to_a.sample
n = (31..45).to_a.sample
g = (46..60).to_a.sample
o = (61..75).to_a.sample

5.times do
  puts b, i, n, g, o
end