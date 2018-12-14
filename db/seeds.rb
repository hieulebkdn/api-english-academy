# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create! name: "Xinh Dep Trai", email: "admin@academy.org",
password: "foobar", password_confirmation: "foobar", role: "admin", phone: Faker::PhoneNumber.cell_phone

20.times do |n|
  name  = Faker::Name.name
  email = "hieu-#{n+1}@academy.org"
  password = "matkhau"
  User.create! name: name, email: email,
  password: password, password_confirmation: password,
  role: "student", phone: Faker::PhoneNumber.cell_phone
end

10.times do |n|
  name  = Faker::Name.name
  email = "an-#{n+1}@academy.org"
  password = "matkhau"
  User.create! name: name, email: email,
  password: password, password_confirmation: password,
  role: "teacher", phone: Faker::PhoneNumber.cell_phone
end

5.times do |n|
  name = Faker::Pokemon.name
  start_date = Faker::Date.between(200.days.ago, Date.today)
  teacher_id = rand(21..30)
  Course.create! name: name, start_date: start_date, teacher_id: teacher_id, is_open: 1
end

50.times do |n|
  Invoice.create! description: Faker::Lorem.sentence, fee: Faker::Number.between(500000,5000000), invoice_type: "Thu",
  paid_day: Faker::Date.between(150.days.ago, Date.today), admin_id: 1, user_id: Faker::Number.between(2,20)
end

20.times do |n|
  Invoice.create! description: Faker::Lorem.sentence, fee: Faker::Number.between(500000,5000000), invoice_type: "Chi",
  paid_day: Faker::Date.between(150.days.ago, Date.today), admin_id: 1, user_id: Faker::Number.between(2,20)
end
