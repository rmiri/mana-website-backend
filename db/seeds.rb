# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

User.create(name:"Renata",family_name:"Freitas",email:"email@fakeemail.com",password:"123", phone:"123123123",dob:"1995-04-19",admin?:true)
User.create(name:"Toli",family_name:"Benson",email:"email@fakeemail.com",password:"123", phone:"123123123",dob:"1990-01-10",admin?:false)


