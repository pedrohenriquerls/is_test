class Database < ActiveRecord::Migration
  def change
    create_table :students do |s|
      s.string :name, :register_number, :status
    end

    create_table :courses do |c|
      c.string :name, :description, :status
    end

    create_table :classrooms do |c|
      c.belongs_to :courses, index: true
      c.belongs_to :students, index: true
      c.datetime :entry_at
    end
  end
end
