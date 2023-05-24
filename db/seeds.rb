# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'chinese' }
dal_fiorentino = { name: 'Dal Fiorentino', address: '74 Hoxton St, London N1 6LP', category: 'chinese' }
maccies = { name: 'Maccies', address: 'everywhere', category: 'chinese' }
bagel_master = { name: 'Bagel Master', address: 'Hoxton', category: 'chinese' }

[dishoom, pizza_east, dal_fiorentino, maccies, bagel_master].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
