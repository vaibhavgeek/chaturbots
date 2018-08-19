class UserStepsController < ApplicationController
	include Wicked::Wizard
	layout "signup"

	steps :payment 

	def show
		render_wizard 
	end

	private 
	def redirect_to_finish_wizard(options=nil, params=nil)
		redirect_to root_url
	end
end
