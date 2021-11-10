# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'delice', email: 'delice@gmail.com', password: 'Delice1@')
Teacher.create(name: 'john doe', courses: 'Poetry', experience: '7yrs', image: 'https://image.freepik.com/free-photo/senior-male-p…aining-writing-green-chalkboard_23-2148200956.jpg')
Teacher.create(name: 'jane doe', courses: 'Python', experience: '3yrs', image: 'https://image.freepik.com/free-photo/portrait-female-teacher-holding-notepad-green_140725-149623.jpg')
Teacher.create(name: 'peter klein', courses: 'Javascript', experience: '5yrs', image: '	https://image.freepik.com/free-photo/elegant-young…ding-writings-pen-giving-lecture_197531-24666.jpg')
Teacher.create(name: 'paul walker', courses: 'Photography', experience: '4yrs', image: 'https://image.freepik.com/free-photo/portrait-young-male-teacher-light-background_99433-2422.jpg')