class VisitsController < ApplicationController
    # GET /:tag
    def new_visit
        @location = Location.find_by(tag: params[:tag])
    end
    
    # POST /:tag
    def create_visit
    	@user = User.find_by(email: params[:email])
    	@location = Location.find_by(tag: params[:tag])		
    	@user.visited_locations << @location
        redirect_to show_user_path(@user)
    end
end