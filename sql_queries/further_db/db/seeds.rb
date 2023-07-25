# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create countries with name and 3 letter code
Country.destroy_all
Country.create(name: "United States", code: "USA")
Country.create(name: "Canada", code: "CAN")
Country.create(name: "Mexico", code: "MEX")
Country.create(name: "United Kingdom", code: "GBR")

# create authors with first name, last name, and country id
Author.destroy_all
Author.create(first_name: "J.K.", last_name: "Rowling", country_id: Country.first.id)
Author.create(first_name: "J.R.R.", last_name: "Tolkien", country_id: Country.second.id)
Author.create(first_name: "Stephen", last_name: "King", country_id: Country.third.id)
Author.create(first_name: "George", last_name: "Orwell", country_id: Country.fourth.id)
Author.create(first_name: "J.R.R.", last_name: "Tolkien", country_id: Country.second.id)
Author.create(first_name: "me", last_name: "blah", country_id: Country.second.id)

# create books with title, author id, and isbn
Book.destroy_all
Book.create(title: "Harry Potter and the Sorcerer's Stone", author_id: Author.first.id, isbn: 9780590353427)
Book.create(title: "Harry Potter and the Chamber of Secrets", author_id: Author.second.id, isbn: 9780439064873)
Book.create(title: "Harry Potter and the Prisoner of Azkaban", author_id: Author.third.id, isbn: 9780439136365)
Book.create(title: "Harry Potter and the Goblet of Fire", author_id: Author.fourth.id, isbn: 9780439139601)
Book.create(title: "Harry Potter and the Order of the Phoenix", author_id: Author.fourth.id, isbn: 9780439358071)
Book.create(title: "Harry Potter and the Half-Blood Prince", author_id: Author.fourth.id, isbn: 9780439785969)
Book.create(title: "Harry Potter and the Deathly Hallows", author_id: Author.fourth.id, isbn: 9780545010221)
Book.create(title: "The Hobbit", author_id: Author.fifth.id, isbn: 9780547928227)


# create book details with book id, price, discount, and is_hard_copy
BookDetail.destroy_all
BookDetail.create(book_id: Book.first.id , price: 9.99, discount: 0.00, is_hard_copy: true)
BookDetail.create(book_id: Book.second.id, price: 9.99, discount: 5.99, is_hard_copy: true)
BookDetail.create(book_id: Book.third.id, price: 9.99, discount: 0.00, is_hard_copy: true)
BookDetail.create(book_id: Book.fourth.id, price: 6.99, discount: 20.50, is_hard_copy: true)
BookDetail.create(book_id: Book.fifth.id, price: 5.99, discount: 25.00, is_hard_copy: true)
BookDetail.create(book_id: Book.last.id, price: 7.99, discount: 24.00, is_hard_copy: true)