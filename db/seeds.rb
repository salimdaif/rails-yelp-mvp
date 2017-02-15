require 'faker'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Name.name  ,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(9),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
  2.times do
    review = Review.new(
      content:    Faker::Hacker.say_something_smart,
      restaurant_id: restaurant.id,
      rating:  (0..5).to_a.sample
    )
    review.save!
  end
end
