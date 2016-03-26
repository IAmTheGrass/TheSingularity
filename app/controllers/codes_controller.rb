class CodesController < ApplicationController

	def show
    	@code = Code.find(params[:id])
	end

	def index
    	@codes = Code.all
	end

	def new
		@code = Code.new
	end

	def create
		@code = Code.create(code_params)
	end

	def edit
		@code = Code.find(params[:id])
	end

	def update
    	@codes = Code.all
    	@code = Code.find(params[:id])
    
    	@code.update_attributes(code_params)
 	end

 	def delete
		@code = Code.find(params[:code_id])
	end

	def destroy
		@codes = Code.all
		@code = Code.find(params[:id])
		@code.destroy
	end

	def calculate
    	@code = Code.find(params[:code_id])
	end

	private
	def code_params
		params.require(:code).permit(:txt, :cost, :description)
	end

end
