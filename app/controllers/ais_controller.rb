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
		respond_to do |format|
  		@type = "created"
  		@info = @ai.name
  		@custom = "Create another?"
    	format.js
		end
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
		respond_to do |format|
  		@type = "deleted"
  		@info = @ai.name
  		@custom = "We can rebuild 'em, we are the technology?"
    	format.js
		end
	end

	def drop
		@ais = Ai.all
	end

	def rundrop
		@ais = Ai.all
	end

	def calculate
    	@ai = Ai.find(params[:ai_id])
	end

	def calcall
		@ais = Ai.all
	end

	private
	def ai_params
		params.require(:ai).permit(:name)
	end

end
