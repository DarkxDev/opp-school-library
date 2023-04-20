require 'rspec'
require_relative '../book'
require_relative '../rental'
require_relative '../person'
require 'json'

describe Book do
  before :each do
    @person = Person.new(15, 'John')
    @book = Book.new('Requiem', 'Hitman')
    @date = '22/22/2222'
  end

  it 'creates a new Rental object' do
    rental = @book.add_rental(@person, @date)
    expect(rental).to be_instance_of(Rental)
  end

  it "includes the book's title in the JSON string" do
    expect(JSON.parse(@book.to_json)['title']).to eq('Requiem')
  end

  it "includes the book's author in the JSON string" do
    expect(JSON.parse(@book.to_json)['author']).to eq('Hitman')
  end
end
