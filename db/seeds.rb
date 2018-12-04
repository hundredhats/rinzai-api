# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all
Todo.destroy_all

List.create!(name: "List 1")
List.create!(name: "List 2")

Todo.create!(description: "Do the thing", list: List.first)
Todo.create!(description: "Do the other thing", list: List.second)
