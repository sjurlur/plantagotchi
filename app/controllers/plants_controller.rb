class PlantsController < ApplicationController
before_filter :find_plant, :only => [:show, :edit, :update, :destroy]
respond_to :json, :xml, :html

	def index
		@plants = Plant.all
		respond_with(@plants)
	end

	def show
		respond_with(@plant)
	end

	def new
		@plant = Plant.new
	end

	def create
		@plant = Plant.new(params[:plant])
		if @plant.save
			respond_with(@plant, :status => 201)
		else
			error = { :error => "Not saved" }
  	   		respond_with(error, :status => 400)	
	end

	def edit

	end

	def update
		if @plant.update_attributes(params[:plant])
			flash[:notice] = "Plant has been updated"
			redirect_to @plant
		
		else
			flash[:alert] = "Plant has not been updated"
			render :action => "edit"
		end
		

	end

	def destroy
		@plant.destroy
		flash[:notice] = "Plant has been deleted"
		redirect_to plants_path

	end

	private
		def find_plant
			@plant = Plant.where(:id => params[:id]).first
			if @plant == nil
				error = { :error => "Plant "+params[:id]+ " does not exist." }
  	   			respond_with(error, :status => 404)	
  	   		end
		end
end
