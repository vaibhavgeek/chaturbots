require 'net/http'
require 'json'
class ChatbotsController < ApplicationController
	  before_action :allow_iframe, only: [:redirect, :index]


 skip_before_action :verify_authenticity_token

	def intent_chat
		@messages = Message.where(:visitor_id => request.params["visitor"]["id"]).all
		@visitor_id = request.params["visitor"]["id"]
	end

	def widgets
		respond_to do |format|
  			format.html { render :layout => 'application' } # your-action.html.erb
		end
	end
	def update_visitor
		puts params
		Visitor.where(:auth_token => params[:auth_token]).first.update(:name => params[:name] , :email => params[:email])
		puts request.body.read
	end
	def show
		@messages = Message.all
		#if Template.where(:user_id => 1) != nil
		#	@templates1 = Template.where(:user_id => 1).group_by { |t| t.parent_id }.to_a[0][1]
		#	@group_results = Template.where(:user_id => 1).group_by { |t| t.parent_id }
		#end
			
	end

	def vdata
		@visitors = Visitor.where(:organisation_id => session[:orga_id])
		respond_to do |format|
  			format.html { render :layout => 'application' } # your-action.html.erb
		end
	end

	def web_scraping
		respond_to do |format|
  			format.html { render :layout => 'application' } # your-action.html.erb
		end
	end
	def reports 
		@bot_r = Message.where(responder: "bot" , :organisation_id => request.params[:id]).count
		@agent_r = Message.where(responder: "agent" , :organisation_id => request.params[:id]).count
		p_a = ( @bot_r.to_f / (@bot_r.to_f + @agent_r.to_f)) * 100 
		@percent_a = p_a.round(2)
		respond_to do |format|
  			format.html { render :layout => 'application' } # your-action.html.erb
		end
	end
	
	def redirect 
		# browser = Browser.new("ChaturBots Agent", accept_language: "en-us")

		if cookies[:auth_token]  == nil
  			cookies[:auth_token] = {
   	 		:value => return_random_string,
   	 		:expires => 100.years.from_now
			}
  		end
  		auth_tok = cookies[:auth_token]
  		oid = params[:id]
		@vis = Visitor.where(auth_token: auth_tok).first

		organisation_id =  params["id"]
		if !@vis
  			if request.remote_ip.to_s != "127.0.0.1"
  				ip_addr = request.remote_ip
			else
				ip_addr = "120.62.192.138"
			end
			loc = Net::HTTP.get(URI.parse('http://ip-api.com/json/'+ip_addr.to_s))
			k = JSON.parse(loc)
  			location = k["city"] + "," + k["country"]
  			@vis = Visitor.where(auth_token: auth_tok).first_or_create(ipaddr: ip_addr , location: location , organisation_id: organisation_id, browser_d: "Generic Browser"  , v_count: 1 )
  			redis.set(@vis.id.to_s + "ml" , 1)
  			redis.set(@vis.id.to_s + "automate" , 1)
		
  		else
  			@vis.v_count ? v_c = @vis.v_count + 1 : v_c = 1
  			@vis.update(:v_count => v_c )
  				
		end
=begin
 		url = params["url"]
 		if Url.where(:url => url ,:visitor_id => @vis.id).count > 0 && !params["popup"]
 			url_up = Url.where(:url => url ,:visitor_id => @vis.id).first 
 			url_up.update(:v_count => url_up.v_count.to_i + 1) 
 		elsif Url.where(:url => url , :visitor_id => @vis.id).count == 0 && !params["popup"]
 			Url.create! url: url , visitor_id: @vis.id , v_count: 1
 		end
=end
		puts request.params
		puts "\n \n \n \n \n \n \n \n \n"
		 redirect_to chatbotmain_organisation_path( request.params[:id] , :auth_token => auth_tok) 

=begin		
		if params["popup"]
			check_popup = params["popup"]
  			redirect_to chatbotpopup_organisation_path( request.params[:id] , :auth_token => auth_tok) 

  		else 


  		end
  		#render json: nil, status: :ok
=end
  		
	end

	def spell_checker
		respond_to do |format|
  			format.html { render :layout => 'application' } # your-action.html.erb
		end
	end


	
		
	def index
 
		
	    @message = Message.new
		auth =  params[:auth_token]
    	visitor = Visitor.where(:auth_token => auth).first
  		@messages = Message.where(:visitor_id => visitor.id).order("created_at ASC").all
  		temp = ::Template.where(:user_id => request.params[:id] , :payload => "initial_message").first
  		@organisation = Organisation.find(request.params[:id]) 

  		if temp.nil? 
  			@initial_message = "default_initial"
  		else
  			@initial_message = temp.partial
  		end
		#MessageBroadcastJob.perform_later @messages.last
		respond_to do |format|
  			format.html { render :layout => 'chatbots' } # your-action.html.erb
		end
	end

	def popup
		respond_to do |format|
  			format.html { render :layout => 'chatbots' } # your-action.html.erb
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

     private
     def redis
     	REDIS
     end

  def allow_iframe
    response.headers.delete "X-Frame-Options"
  end
end
