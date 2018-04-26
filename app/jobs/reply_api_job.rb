require 'net/http'
require 'uri'

class ReplyApiJob < ApplicationJob
  queue_as :default

  def perform(message)
  	#response = api_response(message.content , message.organisation_id)
  	#if response != "live_chat"
    object = api_response(message.content , message.organisation_id)
    object = JSON.parse(object.to_s)
    parse_uri = object["url"]
    puts parse_uri 
    puts "\n"
    biga = object["biga"]
    puts biga
    puts "\n"
    tit = object["title"]
    puts tit
    puts "\n"
    score = object["score"]
    answer = object["answer"]
    @reply = Message.create! content: biga , responder: "bot" , visitor_id: message.visitor.id, user_id: message.user_id , payload: "nil" , organisation_id: message.organisation_id , ml: false , cable: false , url: parse_uri , title: tit , shorta: answer
  	return @reply
  	#end
  end

   def api_response(query,oid)
    url = URI("http://35.196.230.214/")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'text/plain'
    request.body = "{\"question\": \"#{query}\"}"
    response = http.request(request)
    return response.read_body.to_s
  end




end
