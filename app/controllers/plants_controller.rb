class PlantsController < ApplicationController
before_filter :find_plant, :only => [:show, :edit, :update, :destroy]


	def index
		@plants = Plant.all

	end

	def show

	end

	def new
		@plant = Plant.new
	end

	def create
		@plant = Plant.new(params[:plant])
		if @plant.save
			flash[:notice] = "Plant has been created"
			redirect_to @plant
		else
			flash[:alert] = "Plant has not been created"
			render :action => "new"
		end
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
			@plant = Plant.find(params[:id])
		end
end
