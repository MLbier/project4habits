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

user1 = User.create!(email: "user1@gmail.com", password: "12345678", owner: true, first_name: "John", last_name: "Michael")
user2 = User.create!(email: "user2@gmail.com", password: "12345678", owner: true, first_name: "Kacper", last_name: "Petersen")
user3 = User.create!(email: "user3@gmail.com", password: "12345678", owner: true, first_name: "Angelica", last_name: "Doherty")
user4 = User.create!(email: "user4@gmail.com", password: "12345678", first_name: "Julia", last_name: "Miller")
user5 = User.create!(email: "user5@gmail.com", password: "12345678", first_name: "Frederic", last_name: "Gray")
user6 = User.create!(email: "user6@gmail.com", password: "12345678", first_name: "Paul", last_name: "Koll")

puts 'users created'

activity1 = Activity.create!(name: 'boxing', description: 'lessons are done in groupes of 2. Child has to be focused and well behaved(follow the rules). Equipment is not needed', price: '25', location: 'Boldklubben af 1893 Ved Sporsløjfen 10, 2100 København', availability:"2021-12-20", duration: '60', user_id: user1.id)
file1 = URI.open('https://res.cloudinary.com/dqidmlzuu/image/upload/v1638185514/boxing_nnt33h.jpg')
activity1.photo.attach(io: file1, filename: 'boxing.png', content_type: 'image/png')

activity2 = Activity.create!(name: 'basketball', description: 'basketball is a team sport and we will not only teach you child to play basketball but also to become more disciplined', price: '20', location: 'Brønshøj Boldklub Ruten 2, 2700 Brønshøj', availability:"2021-11-17", duration: '90', user_id: user1.id)
file2 = URI.open('https://res.cloudinary.com/dqidmlzuu/image/upload/v1638184057/basketball_qo0iro.jpg')
activity2.photo.attach(io: file2, filename: 'basketball.png', content_type: 'image/png')

activity3 = Activity.create!(name: 'ice hockey', description: 'learn how to play ice-hockey at BVJ. Lessons are in larger groupes of children in the same age group. Please bring your own equipment', price: '20', location: 'Amager Ishockey Club Røllikevej 1, 2770 Kastrup', availability: "2022-01-17", duration: '90', user_id: user1.id)
file3 = URI.open('https://res.cloudinary.com/dqidmlzuu/image/upload/v1638186135/hockey_m8uknx.jpg')
activity3.photo.attach(io: file3, filename: 'hockey.png', content_type: 'image/png')

activity4 = Activity.create!(name: 'field hockey', description: 'play hockey at the Marienburger Sport Club. Lessons are in large groupes of children in the same age group. Please bring own equipment', price: '15', location: 'Bokseinstituttet Søndre Fasanvej 90, 2500 København', availability: "2022-01-17", duration: '115', user_id: user1.id)
file4 = File.open(Rails.root.join('app/assets/images/field-hockey.jpg'))
activity4.photo.attach(io: file4, filename: 'field-hockey.jpg', content_type: 'image/jpeg')

activity5 = Activity.create!(name: 'rugby', description: 'rugby is a contact-sport and requires brave and dedicated people. lessons are done in groupoes of 36 with children in the same age group. Please bring appropriate footwear', price: '10', location: 'Copenhagen Falcons Ice Hockey Club Hannemanns Allé 14AB, 2300 København', availability: "2022-01-17", duration: '120', user_id: user1.id)
file5 = File.open(Rails.root.join('app/assets/images/rugby.jpg'))
activity5.photo.attach(io: file5, filename: 'rugby.jpg', content_type: 'image/jpeg')


activity6 = Activity.create!(name: 'judo', description: 'judo is a combat sport and will teach your child to focus and to become a better person. Lessons are in small groupes of 10 children.', price: '8', location: 'SHC Fight Gym Raffinaderivej 10e, 2300 København', availability: "2022-01-17", duration: '45', user_id: user1.id)
file6 = File.open(Rails.root.join('app/assets/images/judo.png'))
activity6.photo.attach(io: file6, filename: 'judo.png', content_type: 'image/png')

activity7 = Activity.create!(name: 'indoor football', description: 'looking for experianced football players. lessons are free.', price: '0', location: 'Hvidovre Icehockey Club Hvidovrevej 446, 2650 Hvidovre', availability: "2022-01-17", duration: '90', user_id: user1.id)
file7 = File.open(Rails.root.join('app/assets/images/indoor-football.jpg'))
activity7.photo.attach(io: file7, filename: 'indoor-football.jpg', content_type: 'image/jpeg')

activity8 = Activity.create!(name: 'golf', description: 'the Marienburger Golf Club is a beautiful place where you can start your golfing career. Lessons are in groupes of 2. Please bring your own equipment', price: '25', location: 'Amager Ishockey Club Røllikevej 1, 2770 Kastrup', availability: "2022-01-17", duration: '85', user_id: user1.id)
file8 = File.open(Rails.root.join('app/assets/images/golfing.jpg'))
activity8.photo.attach(io: file8, filename: 'golfing.jpg', content_type: 'image/jpeg')

activity9 = Activity.create!(name: 'basketball', description: 'basketball for beginners. basketball is a team-sport so we require you child to be well behaved and nice to his teammates. Lessons are in large groupes of children in the same age group. Please bring appropriate shoewear', price: '10', location: 'Værløse Basketball Klub Bøgehaven, 3500 Værløse', availability: "2022-01-17", duration: '90', user_id: user1.id)
file9 = File.open(Rails.root.join('app/assets/images/basketball2.jpg'))
activity9.photo.attach(io: file9, filename: 'basketball2.jpg', content_type: 'image/jpeg')

activity10 = Activity.create!(name: 'football', description: 'if you are just starting to play football, JVB is the perfect club to start your possibly amazing carrer. Lessons are in large groupes of children in the same age group. Please bring approprite shoewear', price: '10', location: 'Falcon Basketball Klub Bülowsvej 34, 1870 Frederiksberg ', availability: "2022-01-17", duration: '100', user_id: user1.id)
file10 = File.open(Rails.root.join('app/assets/images/football3.jpg'))
activity10.photo.attach(io: file10, filename: 'football3.jpg', content_type: 'image/jpeg')

activity11 = Activity.create!(name: 'rowing', description: 'rowing is a calm but exhausting sport. all the equipment is provided at the club.', price: '25', location: 'Broernes Basketball Klub Guldbergsgade 10, 2200 København', availability: "2022-01-17", duration: '60', user_id: user1.id)
file11 = File.open(Rails.root.join('app/assets/images/rowing.jpg'))
activity11.photo.attach(io: file11, filename: 'rowing.jpg', content_type: 'image/jpeg')

activity12 = Activity.create!(name: 'baseball', description: 'baseball is a hard sport to learn so we are looking for children who are dedicaded and interested in baseball. Lessons are in large groupes of children in the same age group. Please bring own equipment', price: '15', location: 'Bokseklubben Sparta  Østerbrogade 79, 2100 København', availability: "2022-01-17", duration: '120', user_id: user1.id)
file12 = File.open(Rails.root.join('app/assets/images/baseball.jpg'))
activity12.photo.attach(io: file12, filename: 'baseball.jpg', content_type: 'image/jpeg')

activity13 = Activity.create!(name: 'ballet', description: 'ballet is a hard sport and we are looking for young girls and boys who are willing to become excellent at this sort/art', price: '30', location: 'Broernes Basketball Klub Guldbergsgade 10, 2200 København', availability: "2022-01-17", duration: '85', user_id: user1.id)
file13 = File.open(Rails.root.join('app/assets/images/ballet.jpg'))
activity13.photo.attach(io: file13, filename: 'ballet.jpg', content_type: 'image/jpeg')

activity14 = Activity.create!(name: 'volleyball', description: 'volleyball will be played indoors and in gender seperated groupes at the CVBC. Lessons are in groupes of 12 children in the same age group. Please bring own equipment', price: '10', location: 'Bokseklubben Sparta  Østerbrogade 79, 2100 København', availability: "2022-01-17", duration: '60', user_id: user1.id)
file14 = File.open(Rails.root.join('app/assets/images/volleyball.jpg'))
activity14.photo.attach(io: file14, filename: 'volleyball.jpg', content_type: 'image/jpeg')

kid4 = Kid.new(first_name: 'Anna', last_name: 'Miller', age: '12', gender: 'female')
kid5 = Kid.new(first_name: 'Sophie', last_name: 'Gray', age: '11', gender: 'female')
kid6 = Kid.new(first_name: 'Frederic', last_name: 'Koll', age: '9', gender: 'male')
kid7 = Kid.new(first_name: 'Charles', last_name: 'Koll', age: '7', gender: 'male')

puts 'Activities and Kids created'

Slot.create!(day: "Monday", time: "15:30", activity_id: activity1.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity2.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity1.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity2.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity1.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity2.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity1.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity2.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity3.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity4.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity3.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity4.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity3.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity4.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity3.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity4.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity5.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity6.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity5.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity6.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity5.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity6.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity5.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity6.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity7.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity8.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity7.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity8.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity7.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity8.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity7.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity8.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity9.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity10.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity9.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity10.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity9.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity10.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity9.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity10.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity11.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity12.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity11.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity12.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity11.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity12.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity11.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity12.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity13.id)
Slot.create!(day: "Monday", time: "15:30", activity_id: activity14.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity13.id)
Slot.create!(day: "Wednesday", time: "17:30", activity_id: activity14.id)
Slot.create!(day: "Wednesday", time: "13:30", activity_id: activity13.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity14.id)
Slot.create!(day: "Friday", time: "15:30", activity_id: activity13.id)
Slot.create!(day: "Friday", time: "18:30", activity_id: activity14.id)
Slot.create!(day: "Saturday", time: "09:00", activity_id: activity12.id)
Slot.create!(day: "Saturday", time: "12:00", activity_id: activity11.id)
Slot.create!(day: "Thursday", time: "18:00", activity_id: activity12.id)
Slot.create!(day: "Tuesday", time: "15:00", activity_id: activity13.id)
Slot.create!(day: "Tuesday", time: "15:00", activity_id: activity14.id)
Slot.create!(day: "Saturday", time: "17:00", activity_id: activity13.id)
Slot.create!(day: "Saturday", time: "17:00", activity_id: activity8.id)
Slot.create!(day: "Wednesday", time: "17:00", activity_id: activity7.id)
Slot.create!(day: "Saturday", time: "10:00", activity_id: activity8.id)
Slot.create!(day: "Tuesday", time: "13:00", activity_id: activity7.id)
Slot.create!(day: "Tuesday", time: "19:00", activity_id: activity8.id)
Slot.create!(day: "Thursday", time: "14:00", activity_id: activity9.id)
Slot.create!(day: "Saturday", time: "17:00", activity_id: activity5.id)

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
activity1.save!
activity2.user = user2
activity2.save!
activity3.user = user3
activity3.save!
activity4.user = user3
activity4.save!
activity5.user = user3
activity5.save!
activity6.user = user3
activity6.save!
activity7.user = user2
activity7.save!
activity8.user = user2
activity8.save!
activity9.user = user2
activity9.save!
activity10.user = user2
activity10.save!
activity11.user = user1
activity11.save!
activity12.user = user1
activity12.save!
activity13.user = user1
activity13.save!
activity14.user = user1
activity14.save!

kid4.user = user4
kid5.user = user5
kid6.user = user6
kid7.user = user6

kid4.save
kid5.save
kid6.save
kid7.save


puts 'saved'
