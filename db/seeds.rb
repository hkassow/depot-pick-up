# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding items"



10.times{|i|
    Item.create!(name: "test-item #{i+1}", description: "test items always in stock :)", instock: true , quantity: 1, price: i*10)
}