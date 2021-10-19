# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "faker"


avis = RentalCompany.create(name: 'Avis', location: "suffolk", inventory:0)  
budget = RentalCompany.create(name: 'Budget', location: "suffolk", inventory:0)
enterprise = RentalCompany.create(name: 'Enterprise', location: "suffolk", inventory:0)


vehicle_1 = Vehicle.create(
   make: Faker::Vehicle.make,
   model:Faker::Vehicle.model(make_of_model: Faker::Vehicle.make),
   transmission:Faker::Vehicle.transmission,
   fuel_type:Faker::Vehicle.fuel_type,
   doors:Faker::Vehicle.door_count,
   mileage:Faker::Vehicle.mileage,
   year:Faker::Vehicle.year,
   rental_company_id: avis.id
)

vehicle_2 = Vehicle.create(
    make: Faker::Vehicle.make,
    model:Faker::Vehicle.model(make_of_model: Faker::Vehicle.make),
    transmission:Faker::Vehicle.transmission,
    fuel_type:Faker::Vehicle.fuel_type,
    doors:Faker::Vehicle.door_count,
    mileage:Faker::Vehicle.mileage,
    year:Faker::Vehicle.year,
    rental_company_id: budget.id
 )

 vehicle_3 = Vehicle.create(
    make: Faker::Vehicle.make,
    model:Faker::Vehicle.model(make_of_model: Faker::Vehicle.make),
    transmission:Faker::Vehicle.transmission,
    fuel_type:Faker::Vehicle.fuel_type,
    doors:Faker::Vehicle.door_count,
    mileage:Faker::Vehicle.mileage,
    year:Faker::Vehicle.year,
    rental_company_id: enterprise.id
 )