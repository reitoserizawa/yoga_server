# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_31_153141) do

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "years_of_experience"
    t.string "studio_location"
    t.string "bio"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "email"
    t.boolean "in_training"
    t.string "home_location"
    t.string "bio"
  end

  create_table "yoga_classes", force: :cascade do |t|
    t.string "yoga_type"
    t.string "intensity"
    t.string "schedule_date"
    t.string "schedule_time"
    t.integer "student_id"
    t.integer "instructor_id"
  end

end
