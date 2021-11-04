# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating list 1"
Bookmark.create!(list_id: 1, nft_id: 28)
Bookmark.create!(list_id: 1, nft_id: 30)
Bookmark.create!(list_id: 1, nft_id: 32)
Bookmark.create!(list_id: 1, nft_id: 34)
puts "created list 1"

puts "creating list 2"
Bookmark.create!(list_id: 2, nft_id: 29)
Bookmark.create!(list_id: 2, nft_id: 31)
Bookmark.create!(list_id: 2, nft_id: 33)
puts "created list 2"

puts "creating list 3"
Bookmark.create!(list_id: 3, nft_id: 22)
Bookmark.create!(list_id: 3, nft_id: 24)
Bookmark.create!(list_id: 3, nft_id: 29)
Bookmark.create!(list_id: 3, nft_id: 23)
puts "created list 3"

puts "creating list 4"
Bookmark.create!(list_id: 4, nft_id: 26)
Bookmark.create!(list_id: 4, nft_id: 28)
Bookmark.create!(list_id: 4, nft_id: 25)
Bookmark.create!(list_id: 4, nft_id: 34)
puts "created list 4"
