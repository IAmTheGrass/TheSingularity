class AquisitionsController < ApplicationController

	def show
    	@aquisition = Aquisition.find(params[:id])
	end

	def index
    	@aquisitions = Aquisition.all
	end

	def new
		@aquisition = Aquisition.new
	end

	def create
		@aquisition = Aquisition.create(aquisition_params)
	end

	def edit
		@aquisition = Aquisition.find(params[:id])
	end

	def update
    	@aquisitions = Aquisition.all
    	@aquisition = Aquisition.find(params[:id])
    	@aquisition.update_attributes(aquisition_params)
 	end

 	def delete
		@aquisition = Aquisition.find(params[:aquisition_id])
	end

	def destroy
		@aquisitions = Aquisition.all
		@aquisition = Aquisition.find(params[:id])
		@aquisition.destroy
	end

	def calculate
		@aquisition = Aquisition.find(params[:aquisition_id])
	end

	private
	def aquisition_params
		params.require(:aquisition).permit(:ai, :exploit_id, :cost, :transnum)
	end

end
