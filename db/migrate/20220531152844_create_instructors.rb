class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :first_name 
      t.string :last_name 
      t.string :position 
      t.integer :years_of_experience 
      t.string :home_location
      t.string :bio
    end
  end
end
