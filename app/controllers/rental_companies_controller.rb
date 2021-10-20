class RentalCompaniesController < ApplicationController

    def index
        rentals = RentalCompany.all
        render json: rentals
    end
    
end
