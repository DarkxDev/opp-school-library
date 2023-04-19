class Book
  attr_accessor :id
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end

  def to_json(*args)
    { title: @title, author: @author, book_id: Random.rand(1..1000) }.to_json(*args)
  end
end
