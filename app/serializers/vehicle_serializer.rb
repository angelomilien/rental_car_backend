class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :transmission,
  :fuel_type, :doors, :mileage, :year, :rental_company_id
  belongs_to :rental_company 
end
