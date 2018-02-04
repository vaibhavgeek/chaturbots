class IntentsController < ApplicationController
	  before_action :set_intent, only: [:show, :edit, :update, :destroy]

	def create 
		@intent = Intent.new(intent_params)
		user_id = request.params[:user_id]
		@intent.user_id = user_id
	    respond_to do |format|
			if @intent.save
				format.html { redirect_to intents_all_organisation_url(:id => session[:orga_id] ) , notice_error: "Created Sucessfully." }
				format.json { render :show , status: :created , location: @intent}
			else 
				format.html { render :new , notice_error: "Some error ocurred, please try again" }
				format.json { render json: @intent.errors, status: :unprocessable_entity}
			end
		end	
	end 
	def edit
		@intent = Intent.find(params[:id])
	end
	
	def update 
		respond_to do |format|
			if @intent.update(intent_params)
				format.html { redirect_to intents_all_organisation_url , notice_error: "Update Intent Sucessfully"}
				format.json { render :show, status: :ok , location: @intent}
			else
				format.html { render :edit }
				format.json { render json: @intent.errors, status: unprocessable_entity}
			end
		end
	end

	def new 
		@intent = Intent.new
	end
	def destroy
		@intent.destroy 
		respond_to do |format|
      		format.html { redirect_to intents_all_organisation_url(:id => session[:orga_id]), notice: 'Intent was successfully deleted.' }
      		format.json { head :no_content }
    	end
	end
	
	def intents_all
		@intents_paged = Intent.all
	end

	def show
		@user = Intent.where(:user_id => params[:id])
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
	    json_hash = Intent.select(:patterns, :responses).as_json(:except => :id)
	    json_hash.each do |i|
	    	i["message"] = i["patterns"]
	    	i.delete("patterns")
	    	i["response"] = i["responses"]
	    	i.delete("responses")
	    end

		render json: JSON.pretty_generate(json_hash)
	end

	#def show_all
	# json_hash = Intent.select(:patterns, :responses).as_json(:except => :id)
	# hash_result = []
	# json_hash.each do |i|
	# 	hash_result["messages"] = i["patterns"].split(",").collect{|x| x.strip || x }
	# 	hash_result["responses"] = i["responses"].split(",").collect{|x| x.strip || x }
	# 	puts i
	# end
	# render json: JSON.pretty_generate(json_hash)
	#end
	

	private 
	def intent_params
		params.require(:intent).permit(:tag, :patterns ,:responses , :visitor_id , :user_id , :organisation_id ) 
	end
	def set_intent
      @intent = Intent.find(params[:id])
    end
end
