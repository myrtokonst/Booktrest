# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

token = ENV['GOOGLE_BOOKS_TOKEN']
response = RestClient.get "https://www.googleapis.com/books/v1/volumes?q=a&printType=books&maxResults=40&key=#{token}"
books = JSON.parse(response)['items']
books_details = books.map{|book| book["volumeInfo"]}
# byebug
books_details.each{|book| Book.create(name: book["title"], author: book["authors"]!=nil ? book["authors"][0] : book["authors"], description: book["description"], genre: book["categories"]!=nil ? book["categories"][0] : book["categories"], rating: book["averageRating"], ISBN: book["industryIdentifiers"][0]["identifier"], image: book["imageLinks"]["thumbnail"])}

User.create(name: "Ollie", password: "ilovebooks")
User.create(name: "Charlotte", password: "filmislife")
User.create(name: "Filippos", password: "chlamydia")

Usebook.create(user_id: 1, book_id: 21)
Usebook.create(user_id: 1, book_id: 120)
Usebook.create(user_id: 1, book_id: 168)
Usebook.create(user_id: 1, book_id: 172)
Usebook.create(user_id: 2, book_id: 145)
Usebook.create(user_id: 3, book_id: 132)
Usebook.create(user_id: 3, book_id: 128)
Usebook.create(user_id: 3, book_id: 187)
Usebook.create(user_id: 3, book_id: 184)

Folder.create(name: "To read")
Folder.create(name: "Weird books")
Folder.create(name: "One day")
Folder.create(name: "Buy")