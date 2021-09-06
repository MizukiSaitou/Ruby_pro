hash1 = {one:"uno", two:"dos", three:"tres"}
hash1.each do |key, value|
  puts "'#{key}'のスペイン語は'#{value}'"
end


person1 = {first:"one", last:"two"}
person2 = {first:"three", last:"four"}
person3 = {first:"five", last:"six"}
params = {}
params[:father] = person1
params[:mother] = person2
params[:child] = person3
puts params[:father]
puts params[:mother]
puts params[:child]


user = {name:"Taro", email:"aaa@aaa", password_digest:('a'..'z').to_a.shuffle[0..15].join}
puts user

hash2 = { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
puts hash2