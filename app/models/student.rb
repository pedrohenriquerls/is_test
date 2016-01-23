class Student < ActiveRecord::Base
  validates_presence_of :name, :register_number, :status
  has_many :classrooms
  has_many :courses, through: :classrooms
end