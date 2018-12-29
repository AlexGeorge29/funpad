require 'faker'

# cleaning database
puts "cleaning database"
Key.destroy_all
Pad.destroy_all
User.destroy_all

# database generation
puts "database generation"

# Constantes
pictures = ["https://www.zoo-palmyre.fr/sites/default/files/galerie/img_2574.jpg", "https://treathouse.com/wp-content/uploads/2018/06/rainbow-donut-sm.jpg"]
note = [ "", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E"]

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
n = -1
2.times do
puts "pad generation"
pad = Pad.new(
  name: "piano" + "#{n + 1}",
  description: Faker::Lorem.paragraph,
  picture: pictures[n + 1]
  )
# 31 keys by pad
puts "key generation"
number = 0
17.times do
key = Key.new(
  name: "key number" + "#{number + 1}",
  empty: true,
  loop: false,
  description: Faker::Lorem.paragraph,
  note: note[number + 1]
  )

key.pad = pad
key.save!
number += 1
end

pad.user = usertest
pad.save!
n += 1
end
usertest.save!
