class SensorvaluesController < ApplicationController
	before_filter :find_plant
	before_filter :find_sensorvalue, :only => [:show, :edit, :update, :destroy]
	respond_to :json, :xml, :html

	def index
		@sensorvalues = @plant.sensorvalues
		respond_with(@sensorvalues)
	end

	def show
		respond_with(@sensorvalue)
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
		redirect_to @plant

	end

	def last24hours
		@sensorvalues = @plant.sensorvalues.where("created_at >= ?",24.hours.ago)
		if @sensorvalues == nil
			error = { :error => "No records" }
  	   			respond_with(error, :status => 404)	
  	   		end
  	   	respond_with(@sensorvalues)
	end

	private
		def find_plant
			@plant = Plant.where(:id => params[:plant_id]).first
			if @plant == nil
				error = { :error => "Plant "+params[:plant_id]+ " does not exist." }
  	   			respond_with(error, :status => 404)	
  	   		end
		end

		def find_sensorvalue
			@sensorvalue = @plant.sensorvalues.where(:id => params[:id]).first
			if @sensorvalue == nil
				error = { :error => "Sensorvalue "+params[:id]+" does not exist." }
  	   			respond_with(error, :status => 404)	
  	   		end
		end
end
