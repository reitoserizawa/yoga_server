# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
YogaClass.destroy_all
Instructor.destroy_all
Student.destroy_all

puts "Creating instructors..."

15.times do |i|
    Instructor.create(
       first_name: Faker::Name.first_name(),
       last_name: Faker::Name.last_name(),
       years_of_experience: rand(1..30),
       studio_location: Faker::Address.city,
       bio: Faker::Quote.famous_last_words,
       avatar: Faker::Avatar.image
    )
end

puts "Creating students..."

in_training = [true, false]

25.times do |i|
    Student.create(
        first_name: Faker::Name.first_name(),
        last_name: Faker::Name.last_name(),
        phone_number: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        in_training: in_training.sample,
        home_location: Faker::Address.city,
        bio: Faker::Quote.famous_last_words
    )
end

puts "Creating classes..."

intensity = ["C2", "C1", "B2", "B1", "A2", "A1"]
type = ["Vinyasa Yoga", "Hatha Yoga", "Iyengar Yoga", "Ashtanga Yoga", "Kundalini Yoga", "Bikram Yoga", "Yin Yoga", "Restorative Yoga", "Prenatal Yoga", "Anusara Yoga", "Jivamukti Yoga"]
class_length = ["45 minutes", "1 hour"]

50.times do |i|
    YogaClass.create(
        instructor_id: Instructor.ids.sample,
        student_id: Student.ids.sample,
        yoga_type: type.sample,
        intensity: intensity.sample,
        schedule_date: Faker::Date.between(from: '2022-06-01', to: '2022-09-01').strftime("%m/%d/%Y"),
        schedule_start_time: rand(6..20).to_s + ":00",
        class_length: class_length.sample
    )
end

puts "Seeding done!"