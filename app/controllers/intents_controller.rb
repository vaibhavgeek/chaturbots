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
		raw_list = [] 
		tags_raw = Intent.select(:tags).pluck(:tags)
		tags_raw.each do |tags| 
			tags.split(",").each do |ta| 
				raw_list.push(ta.strip)
			end
		end
		raw_list.uniq!
		#if params[:query]
		#	str = params[:query]
		#	@tag_search = Intent.select(:tags)
		#else
		#	@tag_search = Intent.select(:tags)
		#end 
		render json: raw_list
	end
	private 
	def intent_params
		params.require(:intent).permit(:tags, :patterns ,:responses , :visitor_id , :user_id ) 
	end
end
