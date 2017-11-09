class IntentsController < ApplicationController
	def create 
		@intent = Intent.new(intent_params)
		@intent.save
	end 

	def show
		@user = Intent.where(:user_id => params[:user_id])
		respond_to do |format|
			format.json { render json: @user}
		end
	end

	def index
		@tag_search = Intent.select(:tags).pluck(:id)
		@all_tags = nil
		t_search = Intent.select(:tags).pluck(:tags)
		t_search.each do |tag| 
			puts tag.split(",")
			puts "\n \n \n \n"		
		end
		#if params[:query]
		#	str = params[:query]
		#	@tag_search = Intent.select(:tags)
		#else
		#	@tag_search = Intent.select(:tags)
		#end 
		render json: @tag_search
	end
	private 
	def intent_params
		params.require(:intent).permit(:tags, :patterns ,:responses , :visitor_id , :user_id ) 
	end
end
