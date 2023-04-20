require_relative '../classroom'
require_relative '../student'
require 'rspec'

describe Classroom do
  describe '#add_student' do
    it 'adds the student to the students array and sets the student classroom' do
      classroom = Classroom.new('Math')
      student = Student.new(16, 'John Doe', true)
      classroom.add_student(student)
      expect(classroom.students).to eq([student])
      expect(student.classroom).to eq(classroom)
    end
  end
end
