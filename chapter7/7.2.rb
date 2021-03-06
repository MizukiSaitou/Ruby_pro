# ユーザーのデータを作成する
users = []
users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
users << {first_name: 'Bob', last_name: 'Python', age: 30}

# 氏名を作成するメソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{full_name(user)}、　年齢: #{user[:age]}"
end



# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

# 氏名を作成するメソッド
  def full_name(user)
    "#{first_name} #{last_name}"
  end
end

# ユーザーのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{user.full_name(user)}、年齢: #{user.age}"
end


class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

# 氏名を作成するメソッド
  def full_name(user)
    "#{first_name} #{last_name}"
  end
end
user = User.new('Alice', 'Ruby', 20)
puts user.first_name
# first_nameを変更する
user.first_name = 'ありす'
puts user.first_name