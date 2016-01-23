require 'spec_helper'

describe Classroom do

  subject(:student){Student.create(name: 'Joãozinho', status: Student::STATUS[0], register_number: '123123')}
  subject(:course){Course.new(name: 'Inglês', status: Course::STATUS[0], description: 'Aula de inglês gratuita')}

  it 'should be create the classroom with course and student' do
    classroom = Classroom.create student: student, course: course

    classroom.entry_at.should be
    student.courses.first.should eq course
    course.students.first.should eq student
  end
end