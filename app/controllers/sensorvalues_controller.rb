class SensorvaluesController < ApplicationController
	before_filter :find_plant
	before_filter :find_sensorvalue, :only => [:show, :edit, :update, :destroy]


	def index

	end

	def show

	end

	def new
		@sensorvalue = @plant.sensorvalues.build
	end

	def create
		@sensorvalue = @plant.sensorvalues.build(params[:sensorvalue])
		if @sensorvalue.save
			flash[:notice] = "sensorvalue has been created"
			redirect_to [@plant, @sensorvalue]
		else
			flash[:alert] = "sensorvalue has not been created"
			render :action => "new"
		end
	end

	def edit

	end

	def update
		if @sensorvalue.update_attributes(params[:sensorvalue])
			flash[:notice] = "sensorvalue has been updated"
			redirect_to [@plant, @sensorvalue]
		else
			flash[:alert] = "Sensorvalue has not been updated"
			render :action => "edit"
		end

	end

	def destroy
		@sensorvalue.destroy
		flash[:notice] = "Sensorvalue has been deleted"
		redirect_to @sensorvalue

	end

	private
		def find_plant
			@plant = Plant.find(params[:plant_id])
		end

		def find_sensorvalue
			@sensorvalue = @plant.sensorvalues.find(params[:id])
		end
end
