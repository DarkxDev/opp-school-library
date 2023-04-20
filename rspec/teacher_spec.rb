require 'rspec'
require_relative '../teacher'

describe Teacher do
  describe '#can_use_services?' do
    it 'returns true' do
      teacher = Teacher.new(30, 'John Doe', 'Mathematics')
      expect(teacher.can_use_services?).to be true
    end
  end
end
