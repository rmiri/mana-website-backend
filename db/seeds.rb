# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.delete_all
Purchase.delete_all
User.delete_all
Product.delete_all
Service.delete_all


u1 = User.create(name:"Renata",family_name:"Freitas",email:"email@fakeemail.com",password:"123", phone:"123123123",dob:"1995-04-19",admin?:true)
u2 = User.create(name:"Toli",family_name:"Benson",email:"email2@fakeemail.com",password:"123", phone:"123123123",dob:"1990-01-10",admin?:false)
u3 = User.create(name:"Sara",family_name:"Fotros",email:"sara@fakeemail.com",password:"123", phone:"123123123",dob:"1995-04-19",admin?:true)

p1 = Product.create(name:"A.H.A", price:250, image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/c_scale,w_400/v1583248941/filorganight_duxzkl.jpg", quantity:"120", description:"night cream")
p2 = Product.create(name:"Sleep And Peele", price:150, image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/c_scale,w_500/v1583248784/filorga-sleepnpeel_i04bxy.jpg", quantity:"220", description:"Night cream")
p3 = Product.create(name:"Filorga Optim Eye", price:350, image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/c_scale,w_500/v1583248784/filorgaEye_hjnptv.jpg", quantity:"200", description:"filler")

Service.create(name:"Hydra", description:"hydration", image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/v1583231332/eyeImage_xvoa7r.jpg", price:"100")
Service.create(name:"rejuvenating", description:"anti-aging", image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/v1583231333/handServiceImage_xxx4zn.jpg", price:"110")
Service.create(name:"hand", description:"hand treatment", image:"https://res.cloudinary.com/ddxhjhvdj/image/upload/v1583231334/massageHand_xbyora.jpg", price:"50")

 
