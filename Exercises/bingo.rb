b = (1..15).to_a.sample(5)
i = (16..30).to_a.sample(5)
n = (31..45).to_a.sample(5)
g = (46..60).to_a.sample(5)
o = (61..75).to_a.sample(5)

p b
p i
p n
p g
p o

title = %w(B I N G O)
p title.join("|")