class Student < ActiveRecord::Base 
    has_many :yoga_classes
    has_many :instructors, through: :yoga_classes
end