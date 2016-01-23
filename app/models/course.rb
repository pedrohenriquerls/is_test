class Course < ActiveRecord::Base
  #0-Possui vagas abertas
  #1-Lotado
  STATUS = ['Vaga', 'Lotado']

  validates_presence_of :name, :description, :status
  has_many :classrooms
  has_many :students, through: :classrooms
end