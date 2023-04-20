require_relative '../rental'
require_relative '../book'
require_relative '../person'
require 'rspec'
require 'json'

describe Rental do
  describe '#to_json' do
    it 'returns a JSON representation of the rental' do
      person = Person.new(18, 'John Doe', parent_permission: true)
      book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
      rental = Rental.new('22/22/2023', person, book)
      expected_json = {
        person: { age: 18, name: 'John Doe', rentals: [rental] },
        book: { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', rentals: [rental] },
        date: '22/22/2023'
      }.to_json
      expect(rental.to_json).to eq(expected_json)
    end
  end
end
