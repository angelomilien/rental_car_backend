
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
        if vehicle.save 
            render json: vehicle
        else
            render json: {error: "Couldnt be saved"}
        end
    end
    
    def update
        vehicle = Vehicle.find_by_id(params[:id])
        if vehicle.update(vehicle_params)
            render json: vehicle
        else
            render json: {error: "Couldn't Update"}
        end
    end
    
    def destroy
        vehicle =Vehicle.find_by_id(params[:id])
        vehicle.destroy
        render json: {message: "Successfully deleted #{vehicle.make} #{vehicle.model}"}
    end
    
    # private
    
    def vehicle_params 
        params.require(:vehicle).permit(:make, :model, :transmission, :fuel_type, :doors, :mileage, :year, :rental_company_id)
    end

end