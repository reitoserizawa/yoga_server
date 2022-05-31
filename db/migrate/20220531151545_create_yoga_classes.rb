class CreateYogaClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :yoga_classes do |t|
      t.string :type 
      t.string :intensity 
      t.string :date
      t.string :time
      t.integer :student_id 
      t.integer :instructor_id
    end
  end
end
