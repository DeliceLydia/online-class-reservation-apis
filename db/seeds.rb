# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'delice', email: 'delice@gmail.com', password: 'Delice1@')
Teacher.create(name: 'john doe', courses: 'chemistry', experience: '7yrs')
Teacher.create(name: 'jane doe', courses: 'art', experience: '3yrs')
Teacher.create(name: 'peter klein', courses: 'photography', experience: '5yrs')
Teacher.create(name: 'paul walker', courses: 'python', experience: '4yrs')