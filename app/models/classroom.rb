class Classroom < ActiveRecord::Base
  belongs_to :student, dependent: :destroy
  belongs_to :course, dependent: :destroy

  before_save :define_entry_at

  private
  def define_entry_at
    self.entry_at = DateTime.now
  end
end