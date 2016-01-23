require 'spec_helper'

describe Student do
  it 'should be invalid' do
    subject.register_number = ''
    subject.name = ''
    subject.status = nil

    subject.valid?.should be false
  end

  it 'should be valid' do
    subject.register_number = '123412'
    subject.name = 'Joãozinho'
    subject.status = 0

    subject.valid?.should be true
  end
end