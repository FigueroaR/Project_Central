# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
person1 = Contractor.create(firstName: 'Paul' ,lastName: 'Jones', phoneNum: 1234567890, email: 'paul@jones.com', companyName: 'Jones & Co', city: 'Newark, NJ', country: 'USA')
person2 = Contractor.create(firstName: 'Lucas',lastName: 'West', phoneNum: 2345678901, email: 'lucas@west.com', companyName: 'West & East', city: 'San Diego, CA', country: 'USA')
person3 = Contractor.create(firstName: 'Eddie',lastName: 'Murphy', phoneNum: 4567891230, email: 'eddie@murphy.com', companyName: 'Alaugh & Co', city: 'Los Angeles, CA', country: 'USA')
person4 = Contractor.create(firstName: 'George',lastName: 'Lopez', phoneNum: 7894561230, email: 'george@lopez.com', companyName: 'Lopez & Co', city: 'Los Angeles,CA', country: 'USA')