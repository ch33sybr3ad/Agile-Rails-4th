require 'faker'
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

10.times do
Product.create(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.sentence,
  image_url: Faker::Company.logo,
  price: Faker::Commerce.price,
  )
end