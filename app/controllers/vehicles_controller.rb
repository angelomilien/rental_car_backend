
class VehiclesController < ApplicationController
    
    def index 
        vehicles = Vehicle.all
        render json: vehicles
    end
    
    # def show 
    #     comment = Comment.find_by_id(params[:id])
    #     render json: comment
    # end
    
    # def create 
    #     comment = Comment.new(comment_params)
    #     # byebug
    #     if comment.save 
    #         render json: comment
    #     else
    #         render json: {error: "Couldnt be saved"}
    #     end
    # end
    
    # def update
    #     #  byebug
    #     comment = Comment.find_by_id(params[:id])
    #     if comment.update(comment_params)
    #         render json: comment
    #     else
    #         render json: {error: "Couldn't Update"}
    #     end
    # end
    
    # def destroy
    #     comment = Comment.find_by_id(params[:id])
    #     comment.destroy
    #     render json: {message: "Successfully deleted #{comment.title}"}
    # end
    
    # private
    
    # def comment_params 
    #     params.require(:comment).permit(:title, :description, :villian_id)
    # end

end