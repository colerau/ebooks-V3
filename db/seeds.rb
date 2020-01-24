# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# * Authors: 
cormac_mccarthy = Author.create(first_name: "Cormac", last_name: "McCarthy")
george_orwell = Author.create(first_name: "George", last_name: "Orwell")
mary_shelley = Author.create(first_name: "Mary", last_name: "Shelley")
erik_conway = Author.create(first_name: "Erik", last_name: "Conway")
naomi_oreskes = Author.create(first_name: "Naomi", last_name: "Oreskes")

# * Books: 
the_road = Book.create(title: "The Road", genre: "Post-Apocalyptic")
no_country_for_old_men = Book.create(title: "No Country for Old Men", genre: "Novel")
frankenstein = Book.create(title: "Frankenstein", genre: "Gothic")
nineteen_eighty_four = Book.create(title: "1984", genre: "Dystopian")
merchants_of_doubt = Book.create(title: "Merchants of Doubt", genre: "Non-fiction")

# * BookAuthors:
mccarthy_association1 = BookAuthor.create(author_id: cormac_mccarthy.id, book_id: the_road.id)
mccarthy_association2 = BookAuthor.create(author_id: cormac_mccarthy.id, book_id: no_country_for_old_men.id)
orwell_association = BookAuthor.create(author_id: george_orwell.id, book_id: nineteen_eighty_four.id)
shelley_association = BookAuthor.create(author_id: mary_shelley.id, book_id: frankenstein.id)
merchants_of_doubt_association_1 = BookAuthor.create(author_id: erik_conway.id, book_id: merchants_of_doubt.id)
merchants_of_doubt_association_2 = BookAuthor.create(author_id: naomi_oreskes.id, book_id: merchants_of_doubt.id)

# * Users:
user1 = User.create(username: "deepfaker")
user2 = User.create(username: "pass_the_ranch")
user3 = User.create(username: "Rausrule")

# * Reviews: 
review1 = Review.create(text: "Awful", user_id: 1, book_id: 2)
review2 = Review.create(text: "Not bad", user_id: 1, book_id: 3)
review3 = Review.create(text: "Oh", user_id: 2, book_id: 1)
review4 = Review.create(text: "This book changed me", user_id: 3, book_id: 1)
review5 = Review.create(text: "Loved it", user_id: 1, book_id: 4)
review6 = Review.create(text: "Someone published this?", user_id: 4, book_id: 5)
review7 = Review.create(text: "I actually didn't read it", user_id: 1, book_id: 5)
review8 = Review.create(text: "where am i", user_id: 2, book_id: 2)

# * Downloads:
download1 = Download.create(user_id: 1, book_id: 2, downloaded: true)
download2 = Download.create(user_id: 2, book_id: 1, downloaded: true)
download3 = Download.create(user_id: 3, book_id: 3, downloaded: true)
download4 = Download.create(user_id: 3, book_id: 4, downloaded: true)
download5 = Download.create(user_id: 2, book_id: 5, downloaded: true)
download6 = Download.create(user_id: 3, book_id: 5, downloaded: true)

# * Carts:
cart1 = Cart.create(user_id: 1, book_id: 1, name: "Joy")


puts "seeds are done"

