puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Database clean'
puts 'Creating Restaurants...'

100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: "01 43 54 23 31"
  )
  puts "Restaurant #{restaurant.id} is created"
end

puts 'Done!'
