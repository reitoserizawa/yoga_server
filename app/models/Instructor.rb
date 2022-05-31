class Instructor < ActiveRecord::Base 
    has_many :yoga_classes
    has_many :students, through: :yoga_classes
end