# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all"

# Order.destroy_all
# User.destroy_all
# Product.destroy_all

puts "creates users"

stephan = User.new(first_name: "Stephane", last_name: "Simcic", email:"stephan@test.com", password:"dadada")
# file = File.open(Rails.root.join('db/seeds/images/users/steph.jpg'))
# steph.avatar.attach(io: file, filename: 'steph.jpg', content_type: 'image/jpg')
# steph.save!

puts "users created"

puts "creates products"

j_dilla = Product.new(category: "drums",
                      name: "J_Dilla",
                      price: 19.90,
                      content:  "20 kicks, 30 hats, 25 snares, 15 percussions, 6 drum breaks",
                      description: "Known for his crisps productions, this drum kit gathers the best of Jay Dee’s drums style and basslines.
                      Single hits or drum break loops, these sounds were sampled through the MPC 60 as well as processed through the SSL board to filter and give you the highest quality without compromising with Dilla’s reckonizable sound.",
                      rating: 4,
                      tags: "drums, drum kit, kick, snare, hat, J Dilla, J-Dilla, Dilla Dog",
                      sound_name: "kick_1"
                      )
                      
file = File.open(Rails.root.join('db/seeds/images/products/jd.jpg'))
j_dilla.photo.attach(io: file, filename: 'jd.jpg', content_type: 'image/jpg')
j_dilla.save!

puts "products created"