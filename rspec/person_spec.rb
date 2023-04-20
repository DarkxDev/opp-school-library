require 'rspec'
require_relative '../person'
require_relative '../book'
require_relative '../rental'
require_relative '../student'
require_relative '../teacher'
require 'json'

describe Person do

  before :each do
    @book = Book.new("Requiem", "Hitman")
    @person = Person.new(15, "Darkx", parent_permission: true)
  end

    it "creates a new rental object" do
      rental = @person.add_rental(@book, "22/22/2222")
      expect(rental).to be_instance_of(Rental)
    end

    it "adds the rental object to the person's rentals" do
      rental = @person.add_rental(@book, "22/22/2222")
      expect(@person.rentals).to include(rental)
    end
end
