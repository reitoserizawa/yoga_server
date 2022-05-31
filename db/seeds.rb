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
       bio: Faker::Quote.famous_last_words
    )
end

puts "Creating students..."

in_training = [true, false]

20.times do |i|
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
schedule_time = ["6:30am - 7:30am", "7:45am - 8:45am", "9:00am - 10:00am", "10:15am - 11:15am", "11:30am - 12:30pm", "12:45pm - 1:45pm", "2:00pm - 3:00pm", "3:15pm - 4:15pm", "4:30pm - 5:30pm", "5:45pm - 6:45pm", "7:00pm - 8:00pm"]

50.times do |i|
    YogaClass.create(
        instructor_id: Instructor.ids.sample,
        student_id: Student.ids.sample,
        yoga_type: type.sample,
        intensity: intensity.sample,
        schedule_date: Faker::Date.between(from: '2022-06-01', to: '2022-09-01'),
        schedule_time: schedule_time.sample
    )
end

puts "Seeding done!"