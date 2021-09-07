class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def fromatted_email
    "#{full_name}<#{@email}>"
  end

  def alphabetical_name
    "#{@last_name}, #{@first_name}"
  end
end

user = User.new({first_name:"Taro", last_name:"Suzuki", email:"aaa@aaa"})
puts user.fromatted_email
puts user.alphabetical_name
puts user.full_name.split == user.alphabetical_name.split(', ').reverse