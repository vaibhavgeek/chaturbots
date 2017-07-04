class HomeController < ApplicationController
  def about_us
  end
  def contact_us
  end
  def index
  	  	Message.create! content: "Welcome to instarem chatbot!"

  	  	@messages = Message.all

  end
end
