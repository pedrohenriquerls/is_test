class Classroom < ActiveRecord::Base
  belongs_to :students, dependent: :destroy
  belongs_to :courses, dependent: :destroy
end