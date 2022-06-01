class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :first_name 
      t.string :last_name 
      t.integer :years_of_experience 
      t.string :studio_location
      t.string :avatar
      t.string :bio
    end
  end
end
