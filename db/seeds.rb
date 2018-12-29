# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cleaning database
puts "cleaning database"
Key.destroy_all
Pad.destroy_all
User.destroy_all

# database generation
puts "database generation"

# One user
puts "user test generation"
usertest = User.new(
  email: "testuser@email",
  password: "000000"
  )
# 2 pads
2.times do
pad = Pad.new(

  )
# 31 keys by pad
31.times do
key = Key.new(

  )

key.pad = pad
key.save!
end

pad.user = usertest
pad.save!
end
usertest.save!
