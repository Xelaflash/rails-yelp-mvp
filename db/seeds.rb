# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:          '0632334059',
    category:     'chinese'
  },

  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:          '0780908769',
    category:     'italian'
  },

  {
    name:         'Paul',
    address:      '56, rue de mes roustons, Paris',
    phone_number:          '0556753442',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'



puts 'Creating reviews...'
comments = [
  { content: "c'est bon", rating: 5 },
  { content: "c'est nul", rating: 1 },
]

Restaurant.all.each do |restaurant|
  rand(1..3).times do
    restaurant.reviews.create!(comments.sample)
  end
end
puts 'Finished!'

