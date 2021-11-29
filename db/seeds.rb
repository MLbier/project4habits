# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user1 = User.create!(email: "user1@gmail.com", password: "12345678", first_name: "Pauli", last_name: "Eichhorn", owner: true)
# user2 = User.create!(email: "user2@gmail.com", password: "12345678", first_name: "Andrii", last_name: "Gorokhovskyi", owner: true)
# user3 = User.create!(email: "user3@gmail.com", password: "12345678", first_name: "Marie", last_name: "Bier", owner: true)

# user4 = User.create!(email: "user4@gmail.com", password: "12345678", first_name: "William", last_name: "Miller", owner: false)
# user5 = User.create!(email: "user5@gmail.com", password: "12345678", first_name: "Marc", last_name: "Gray", owner: false)
# user6 = User.create!(email: "user6@gmail.com", password: "12345678", first_name: "Alice", last_name: "Koll", owner: false)

require "open-uri"
Booking.destroy_all
Slot.destroy_all
Activity.destroy_all
Kid.destroy_all
User.destroy_all

puts 'everything destroyed'

user1 = User.create!(email: "user1@gmail.com", password: "12345678", owner: true)
user2 = User.create!(email: "user2@gmail.com", password: "12345678")
user3 = User.create!(email: "user3@gmail.com", password: "12345678")
user4 = User.create!(email: "user4@gmail.com", password: "12345678")
user5 = User.create!(email: "user5@gmail.com", password: "12345678")
user6 = User.create!(email: "user6@gmail.com", password: "12345678")

puts 'users created'

activity1 = Activity.create!(name: 'boxing', description: 'lessons are done in groupes of 2. Child has to be focused and well behaved(follow the rules). Equipment is not needed', price: '25', location: 'Goltsteinstr. 150, Cologne, Germany', availability:"2021-12-20", duration: '60', user_id: user1.id)
activity2 = Activity.create!(name: 'basketball', description: 'basketball is a team sport and we will not only teach you child to play basketball but also to become more disciplined', price: '20', location: 'Rudower Straße 44, Berlin, Germany', availability:"2021-11-17", duration: '90', user_id: user1.id)
activity3 = Activity.create!(name: 'hockey', description: 'play Hockey at the Marienburger Sport Club. Lessons are in large groupes of children in the same age group. Please bring own equipment', price: '15', location: 'Heerweg 671, Bremen, Germany', availability: "2022-01-17", duration: '115', user_id: user1.id)

kid4 = Kid.new(first_name: 'Anna', last_name: 'Miller', age: '12', gender: 'female')
kid5 = Kid.new(first_name: 'Sophie', last_name: 'Gray', age: '11', gender: 'female')
kid6 = Kid.new(first_name: 'Frederic', last_name: 'Koll', age: '9', gender: 'male')
kid7 = Kid.new(first_name: 'Charles', last_name: 'Koll', age: '7', gender: 'male')

puts 'Activities and Kids created'

slot1 = Slot.create!(day: "Monday", time: "15:30", activity_id: activity1.id)
slot2 = Slot.create!(day: "Monday", time: "15:30", activity_id: activity2.id)
slot3 = Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity1.id)
slot4 = Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity2.id)
slot5 = Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity3.id)
slot6 = Slot.create!(day: "Friday", time: "15:30", activity_id: activity2.id)
slot7 = Slot.create!(day: "Friday", time: "15:30", activity_id: activity3.id)
slot8 = Slot.create!(day: "Friday", time: "18:30", activity_id: activity3.id)

# file1 = URI.open('https://cdn.pixabay.com/photo/2013/07/13/12/35/boxing-gloves-159920_1280.png')
# file2 = URI.open('https://cdn.pixabay.com/photo/2014/04/02/14/12/basketball-306498_1280.png')
# file3 = URI.open('https://cdn.pixabay.com/photo/2012/04/24/18/13/hockey-40761_1280.png')
# file_girl = URI.open('https://cdn-icons-png.flaticon.com/512/163/163811.png')
# file_boy = URI.open('https://cdn-icons-png.flaticon.com/512/163/163807.png')

# activity1.photo.attach(io: file1, filename: 'boxing.png', content_type: 'image/png')
# activity2.photo.attach(io: file2, filename: 'basketball.png', content_type: 'image/png')
# activity3.photo.attach(io: file3, filename: 'hockey.png', content_type: 'image/png')
# kid4.photo.attach(io: file_girl, filename: 'girl.png', content_type: 'image/png')
# kid5.photo.attach(io: file_girl, filename: 'girl.png', content_type: 'image/png')
# kid6.photo.attach(io: file_boy, filename: 'boy.png', content_type: 'image/png')
# kid7.photo.attach(io: file_boy, filename: 'boy.png', content_type: 'image/png')

puts 'saving.....'

activity1.user = user1
activity2.user = user2
activity3.user = user3

kid4.user = user4
kid5.user = user5
kid6.user = user6
kid7.user = user6

kid4.save
kid5.save
kid6.save
kid7.save


puts 'saved'
