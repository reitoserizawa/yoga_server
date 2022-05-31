class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t| 
      t.string :first_name 
      t.string :last_name 
      t.integer :phone_number 
      t.string :email 
      t.boolean :in_training
      t.string :home_location 
      t.string :bio
    end
  end
end
