class HomeController < ApplicationController

  def about_us
  end
  def contact_us
  end
  def index
  	@messages = Message.all

  end
end
