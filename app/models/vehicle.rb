class Vehicle < ApplicationRecord
    belongs_to :rental_company
    validates_presence_of :doors, :mileage, :year
end
