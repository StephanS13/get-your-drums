# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all"

# Order.destroy_all
User.destroy_all
Product.destroy_all

puts "creates users"

stephan = User.new(first_name: "Stephane", last_name: "Simcic", email:"stephan@test.com", password:"dadadada")
file = File.open(Rails.root.join('db/seeds/images/users/steph.jpg'))
stephan.avatar.attach(io: file, filename: 'steph.jpg', content_type: 'image/jpg')
stephan.save!

puts "users created"

puts "creates products"

dilla = Product.new(category: "producers",
                      name: "J Dilla | Dilla Dog kit",
                      price: 19.90,
                      content:  "119 sounds",
                      description: "This kit gathers the best of Jay Dee’s drums style and basslines.
                      These sounds were processed in order to provide high quality sounds while conservating Dilla’s reckonizable sound type.",
                      rating: 4,
                      tags: "drums, drum kit, kick, snare, hat, J Dilla, J-Dilla, Dilla Dog",
                      sound_name: "kick_1"
                      )
                      
file = File.open(Rails.root.join('db/seeds/images/products/jd.jpg'))
dilla.photo.attach(io: file, filename: 'jd.jpg', content_type: 'image/jpg')
dilla.save!

dilla.audio.attach(io: File.open(Rails.root.join('/home/stephan/get-your-drums/db/seeds/sounds/sound.wav')), filename: 'sound.wav')
dilla.save!

dre = Product.new(category: "producers",
                      name: "Dr. Dre | The Chronic kit",
                      price: 24.90,
                      content:  "125 sounds",
                      description: "This kit gathers the best of Dr. Dre’s drums style and basslines.
                      These sounds were processed in order to provide high quality sounds while conservating Dre’s reckonizable sound type.",
                      rating: 5,
                      tags: "drums, drum kit, kick, snare, hat, Dr. Dre, The Chronic",
                      sound_name: "kick_2"
                      )
                      
file = File.open(Rails.root.join('db/seeds/images/products/dre.jpg'))
dre.photo.attach(io: file, filename: 'dre.jpg', content_type: 'image/jpg')
dre.save!

primo = Product.new(category: "producers",
                      name: "DJ Premier | Full Clip kit",
                      price: 24.90,
                      content:  "209 sounds",
                      description: "This kit gathers the best of Premier’s drums style and basslines.
                      These sounds were processed in order to provide high quality sounds while conservating Premo’s reckonizable sound type.",
                      rating: 4,
                      tags: "drums, drum kit, kick, snare, hat, DJ Premier, Premier",
                      sound_name: "kick_3"
                      )
                      
file = File.open(Rails.root.join('db/seeds/images/products/primo.jpg'))
primo.photo.attach(io: file, filename: 'primo.jpg', content_type: 'image/jpg')
primo.save!

puts "products created"