require 'net/http'
require 'json'
class ChatbotsController < ApplicationController
	


	def intent_chat
		@messages = Message.where(:visitor_id => request.params["visitor"]["id"]).all
		@visitor_id = request.params["visitor"]["id"]
	end

	def show
		@messages = Message.all
		#if Template.where(:user_id => 1) != nil
		#	@templates1 = Template.where(:user_id => 1).group_by { |t| t.parent_id }.to_a[0][1]
		#	@group_results = Template.where(:user_id => 1).group_by { |t| t.parent_id }
		#end
			
	end
	
	def redirect 
  		#render json: nil, status: :ok
  		if cookies[:auth_token]  == nil
  			cookies[:auth_token] = {
   	 		:value => return_random_string,
   	 		:expires => 100.years.from_now
			}
  		end
  		auth_tok = cookies[:auth_token]
  		if Visitor.where(auth_token: auth_tok).count == 0
  			if request.remote_ip.to_s != "127.0.0.1"
  				ip_addr = request.remote_ip
			else
				ip_addr = "120.62.192.138"
			end
			loc = Net::HTTP.get(URI.parse('http://freegeoip.net/json/'+ip_addr.to_s))
			k = JSON.parse(loc)
  			puts k 
  			location = k["city"] + "," + k["region_name"] + ", " + k["country_name"]
  			Visitor.where(auth_token: auth_tok).first_or_create(ipaddr: ip_addr , location: location)

		end
		redirect_to chatbotmain_organisation_path( request.params[:id] , :auth_token => auth_tok) 
	end

	def index
		puts cookies[:auth_token] + "\n\n\n"
		puts request.params 
	    @message = Message.new
		auth =  params[:auth_token]
    	visitor = Visitor.where(:auth_token => auth).first
  		@messages = Message.where(:visitor_id => visitor.id).all
  		temp = ::Template.where(:user_id => request.params[:id] , :payload => "initial_message").first
  		if temp.nil? 
  			@initial_message = "default_initial"
  		else
  			@initial_message = temp.partial
  		end
		#MessageBroadcastJob.perform_later @messages.last
		respond_to do |format|
  			format.html { render :layout => 'vedicmaths' } # your-action.html.erb
		end
	end

	def preview
		respond_to do |format|
			format.html {render :layout => 'vedicmaths'} 
		end
	end
	
	def create 
		@message = Message.new(message_params)
	    client = ApiAiRuby::Client.new(
           :client_access_token => '31f5d2bb49ce4577bb5303f72be6ff75'
           )
        response = client.text_request @message.content.to_s
        speech_res = response[:result][:fulfillment][:messages][0][:speech]
      	Message.create! content: speech_res
	end
	
	def intent_mapping
		
	end

	private 
	
	def get_set_sessions
		if cookies.signed["visitor"] == nil 
			cookies.signed["visitor"] = return_random_string
		end
		verified_visitor = find_verified_vistor(cookies.signed["visitor"] , verified_chat.id)
        puts cookies.signed['visitor']
        puts "\n this is from controller file"
	end


	def message_params
		params.require(:message).permit(:content, :user_id , :responder)
	end

	
     def find_verified_vistor(session_visitor , session_chat_id)
       	if verified_visitor = Visitor.where(auth_token: session_visitor).first_or_create(ipaddr: request.remote_ip , chat_id: session_chat_id)
       		verified_visitor
       	end
     end


     def return_random_string
       	o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
		string = (0...100).map { o[rand(o.length)] }.join
		string
     end
end
