# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'delice', email: 'delice@gmail.com', password: 'Delice1@')
Teacher.create(name: 'serge', courses: 'chemistry', experience: '7years')
Teacher.create(name: 'ephrem', courses: 'art', experience: '3years')
Teacher.create(name: 'josiane', courses: 'photography', experience: '5years')
Teacher.create(name: 'johntan', courses: 'python', experience: '4years')