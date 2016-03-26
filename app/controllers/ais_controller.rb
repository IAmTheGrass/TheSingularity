class AisController < ApplicationController

	def show
		@ai = Ai.find(params[:id])
	end

	def index
    	@ais = Ai.all
	end

	def new
		@ai = Ai.new
	end

	def create
		@ai = Ai.create(ai_params)
	end

	def edit
		@ai = Ai.find(params[:id])
	end

	 def update
    	@ais = Ai.all
    	@ai = Ai.find(params[:id])
    
    	@ai.update_attributes(ai_params)
 	end

	def delete
		@ai = Ai.find(params[:ai_id])
	end

	def destroy
		@ais = Ai.all
		@ai = Ai.find(params[:id])
		@ai.destroy
	end

	def calculate
    	@ai = Ai.find(params[:ai_id])
	end

	private
	def ai_params
		params.require(:ai).permit(:name)
	end

end
