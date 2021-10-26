# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "faker"

RentalCompany.destroy_all
Vehicle.destroy_all

avis = RentalCompany.create(name: 'Avis', location: "suffolk", inventory:0)  
budget = RentalCompany.create(name: 'Budget', location: "suffolk", inventory:0)
enterprise = RentalCompany.create(name: 'Enterprise', location: "suffolk", inventory:0)


6.times do
   make_1 = Faker::Vehicle.make
   vehicle_1 = Vehicle.create(
      make: make_1,
      model:Faker::Vehicle.model(make_of_model: make_1),
      transmission:Faker::Vehicle.transmission,
      fuel_type:Faker::Vehicle.fuel_type,
      doors:Faker::Vehicle.door_count,
      mileage:Faker::Vehicle.mileage,
      year:Faker::Vehicle.year,
      rental_company_id: avis.id
   )
end


2.times do
make_2 = Faker::Vehicle.make
vehicle_2 = Vehicle.create(
   make: make_2,
   model:Faker::Vehicle.model(make_of_model: make_2),
   transmission:Faker::Vehicle.transmission,
   fuel_type:Faker::Vehicle.fuel_type,
   doors:Faker::Vehicle.door_count,
   mileage:Faker::Vehicle.mileage,
   year:Faker::Vehicle.year,
   rental_company_id: budget.id
)
end

5.times do
   make_3 = Faker::Vehicle.make
   vehicle_3 = Vehicle.create(
      make: make_3,
      model:Faker::Vehicle.model(make_of_model: make_3),
      transmission:Faker::Vehicle.transmission,
      fuel_type:Faker::Vehicle.fuel_type,
      doors:Faker::Vehicle.door_count,
      mileage:Faker::Vehicle.mileage,
      year:Faker::Vehicle.year,
      rental_company_id: enterprise.id
   )
end


# RentalCompany.all.each do |rental|
#     rental.inventory = rental.vehicles.count
# end