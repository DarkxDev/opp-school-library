require_relative '../rental'
require_relative '../book'
require_relative '../person'
require 'rspec'

describe Rental do
  before(:each) do
    @book = Book.new('Requiem', 'Hitman')
    @person = Person.new(15, 'Darkx', parent_permission: true)
    @rental = Rental.new('22/22/2222', @person, @book)
  end

  it 'should create an instance of Rental' do
    expect(@rental).to be_an_instance_of(Rental)
  end

  it 'should initialize with a person instance' do
    expect(@rental.instance_variable_get(:@person)).to be_an_instance_of(Person)
  end

  it 'should initialize with a book instance' do
    expect(@rental.instance_variable_get(:@book)).to be_an_instance_of(Book)
  end
end
