require 'faker'

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
  first_name: "Joey",
  last_name: "Star",
  description: Faker::Lorem.paragraph,
  email: "testuser@email.com",
  password: "000000"
  )
# 2 pads
n = 0
picture1 = "https://www.zoo-palmyre.fr/sites/default/files/galerie/img_2574.jpg"
picture2 = "https://treathouse.com/wp-content/uploads/2018/06/rainbow-donut-sm.jpg"
2.times do
pad = Pad.new(
  name: "piano #{n + 1}",
  description: Faker::Lorem.paragraph,
  picture: picture"#{n + 1}"
  )
# 31 keys by pad
number = 0
note = [ "", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E"]
17.times do
key = Key.new(
  name: "key number#{n+1}"
  empty: true,
  loop: false,
  description: Faker::Lorem.paragraph,
  note: note[number + 1]
  )

key.pad = pad
key.save!
end

pad.user = usertest
pad.save!
end
usertest.save!
