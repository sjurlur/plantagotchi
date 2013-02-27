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
		

	end

	def destroy
		

	end

	private
		def find_plant
			@plant = Plant.find(params[:id])
		end
end
