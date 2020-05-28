# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all gardens"

Garden.destroy_all if Rails.env.development?

puts "creating a couple of gardens"

Garden.create!(
    name: "My cool garden",
    banner_url: "https://images.unsplash.com/photo-1490750967868-88aa4486c946?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80"
)

Garden.create!(
  name: "Milene's Garden!",
  banner_url:"https://images.unsplash.com/photo-1483809715206-0499044b5b69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
)

Tag.destroy_all if Rails.env.development?

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

names.each do |name|
  Tag.create!(name: name)
end

puts "Done!"
