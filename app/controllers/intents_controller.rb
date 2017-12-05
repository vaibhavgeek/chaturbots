class IntentsController < ApplicationController
	def create 
		@intent = Intent.new(intent_params)
		if @intent.save
			flash[:notice_error] = "Created Sucessfully. Edit Intent"
		else 
			flash[:notice_error] = "Some error ocurred, please try again"
		end	

	end 

	def show
		@user = Intent.where(:user_id => params[:user_id])
		respond_to do |format|
			format.json { render json: @user}
		end
	end

	def index
		raw_list = [] 
		tags_raw = Intent.select(:tag).pluck(:tag)
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


	def show_all
	 json_hash = Intent.select(:tag, :patterns, :responses).as_json(:except => :id)
	 json_hash.each do |i|
	 	i["patterns"] = i["patterns"].split(",").collect{|x| x.strip || x }
	 	i["responses"] = i["responses"].split(",").collect{|x| x.strip || x }
	 	puts i
	 end
	 output_json = { "intents" => json_hash}
	 render json: JSON.pretty_generate(output_json)
	end
	private 
	def intent_params
		params.require(:intent).permit(:tag, :patterns ,:responses , :visitor_id , :user_id ) 
	end
end
