class RentalCompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :inventory
  has_many :vehicles
end
