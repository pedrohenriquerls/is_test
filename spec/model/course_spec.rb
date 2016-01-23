require 'spec_helper'

describe Course do
  it 'should be invalid' do
    subject.description = ''
    subject.name = ''

    subject.valid?.should be false
  end

  it 'should be valid' do
    subject.description = 'Aula de inglês'
    subject.name = 'Inglês'
    subject.status = 0

    subject.valid?.should be true
  end
end