require 'rspec'
require_relative '../student'
require_relative '../classroom'

describe Student do
  let(:student) { Student.new(16, 'Alice', true) }
  let(:classroom) { Classroom.new('Math') }

  describe '#play_hooky' do
    it 'returns the shrug emoticon' do
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end

  describe '#classroom=' do
    it 'sets the classroom instance variable and adds the student to the classroom' do
      student.classroom = classroom
      expect(student.instance_variable_get(:@classroom)).to eq(classroom)
      expect(classroom.students).to include(student)
    end
  end
end
