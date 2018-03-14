require 'rails_helper'

describe "security" do
  it "signs users in" do
  	get new_user_session_path
    expect {
    	fill_in "Email", :with => "vaibhav.dkm@gmail.com"
    	fill_in "Password", :with => "F1inindia"
   		click_button "Log In"
    }
    puts response.body
  end
end