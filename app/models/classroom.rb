class Classroom < ActiveRecord::Base
  belongs_to :students, dependent: :destroy
  belongs_to :courses, dependent: :destroy

  before_save :define_entry_at

  private
  def define_entry_at
    self.entry_at = DateTime.now
  end
end