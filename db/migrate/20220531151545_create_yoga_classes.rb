class CreateYogaClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :yoga_classes do |t|
      t.string :yoga_type 
      t.string :intensity 
      t.string :schedule_date
      t.string :schedule_start_time 
      t.string :class_length
      t.integer :student_id 
      t.integer :instructor_id
    end
  end
end
