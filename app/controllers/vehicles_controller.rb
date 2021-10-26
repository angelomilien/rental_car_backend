
class VehiclesController < ApplicationController
    
    def index 
        vehicles = Vehicle.all
        render json: vehicles
    end
    
    # def show 
    #     comment = Comment.find_by_id(params[:id])
    #     render json: comment
    # end
    
    def create 
        vehicle = Vehicle.new(vehicle_params)
        # byebug
        if vehicle.save 
            render json: vehicle
        else
            render json: {error: "Couldnt be saved"}
        end
    end
    
    # def update
    #     #  byebug
    #     vehicle = vehicle.find_by_id(params[:id])
    #     if vehicle.update(vehicle_params)
    #         render json: vehicle
    #     else
    #         render json: {error: "Couldn't Update"}
    #     end
    # end
    
    # def destroy
    #     vehicle = vehicle.find_by_id(params[:id])
    #     vehicle.destroy
    #     render json: {message: "Successfully deleted #{vehicle.title}"}
    # end
    
    # private
    
    def vehicle_params 
        params.require(:vehicle).permit(:make, :model, :transmission, :fuel_type, :door, :mileage, :year, :rental_company_id)
    end

end