require 'faker'

# Create Users

10.times do 
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!
end

users = User.all


# Create Items

50.times do 
  Item.create!(
    name: Faker::Lorem.sentence,
    user: users.sample
  )
end

items = Item.all

puts "#{User.count} users created"
puts "#{Item.count} items created"



