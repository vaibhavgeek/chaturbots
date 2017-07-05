class HomeController < ApplicationController
  before_action :authenticate_user!

  def about_us
  end
  def contact_us
  end
  def index
  	@messages = Message.all

  end
end
