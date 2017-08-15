class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end
  def new 
  	@messages = Message.all
  	puts @messages.first.as_json 
  end
  def update
  end

  def destroy
  end
end
