class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @messages = Message.where(:visitor_id => params[:id]).all

  end
  def new 
    auth =  params[:auth_token]
    @visitor = Visitor.where(:auth_token => auth).first
  	@messages = Message.where(:visitor_id => @visitor.id).all
  	puts @messages.first.as_json 
  end
  def update
  end

  def destroy
  end
end
