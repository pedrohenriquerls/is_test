class Student < ActiveRecord::Base
  STATUS = ['Normal', 'Faltando documentação']

  validates_presence_of :name, :register_number, :status
  has_many :classrooms
  has_many :courses, through: :classrooms
end