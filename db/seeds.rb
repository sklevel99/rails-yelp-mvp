# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

Dallas = { name: 'Dallas', address: '7 Boundary St, London E2 7JE', phone_number: '5888 333', category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample }
KFC = { name: 'KFC', address: '8 Boundary St, London E3 8JH', phone_number: '5777 333', category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample }
Debonairs = { name: 'Debonairs ', address: '9 Boundary St, London E4 9JI', phone_number: '5777 303', category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample }
Ken = { name: 'Ken ', address: '10 Boundary St, London E5 1JO', phone_number: '5707 303', category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample }
Sen = { name: 'Sen ', address: '11 Boundary St, London E6 1JK', phone_number: '5307 303', category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample }

[Dallas, KFC, Debonairs, Ken, Sen].each do |resto|
  retaurant = Restaurant.create!(resto)
  puts "Created #{retaurant.name}"
end

puts "Finished"
