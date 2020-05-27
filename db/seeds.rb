Flat.destroy_all
10.times do
  Flat.create!(
    name: Faker::Team.name,
    address:  Faker::Address.street_address,
    description: Faker::Dessert.variety,
    rating: rand(1..5),
    price_per_night: rand(30..75),
  number_of_guests: rand(1..6))
end
