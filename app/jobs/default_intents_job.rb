class DefaultIntentsJob < ApplicationJob
  queue_as :default

  def perform(user)
  	Intent.create! tag: "welcome" , patterns: "Who are you?" , responses: "My name is ChaturBot. I am here to help you with your queries" , organisation_id: user.organisation_id 
    Intent.create! tag: "welcome" , patterns: "Hello" , responses: "Hi, my name is ChaturBot. I am here to help you with your queries" , organisation_id: user.organisation_id 
    # Do something later
  end
end
