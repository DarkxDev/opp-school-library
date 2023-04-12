class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rentals << self
    person.rentals << self
  end
end

#
#   Test this code by running the following:
#
#   person1 = Person.new(10, "John")
#   book1 = Book.new("The Hitchhiker's Guide to the Galaxy", "Douglas Adams")
#   rental1 = Rental.new(Date.today, book1, person1)
#
#   def has_rented_book?(person, book)
#     person.rentals.any? { |rental| rental.book == book }
#   end
#
#   puts has_rented_book?(person1, book1) # true
#   puts has_rented_book?(person1, book2) # false
#
