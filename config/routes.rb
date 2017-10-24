Rails.application.routes.draw do
 

# general show time routes
  get 'home/index'
  get 'home/contact_us'
  get 'home/about_us'
  get 'home/blog'
# routes for admin panel and customer support of client, enables them to see chats
  devise_for :users
  root 'home#index'
  resources :users , only: [:show , :edit] do 
  	resources :chats
    resources :intents
  end 
  get 'settings/payment'
  get 'settings/account' 

#routes for the vedic-maths chatbot
  resources :users , only: [:show , :edit] do 
      member do
            get 'bot/redirect' , to: 'chatbots#redirect'   
            get 'bot/index/:auth_token' , to: 'chatbots#index' , as: 'chatbotmain'
            get 'bot/reports' , to: 'chatbots#reports'
            get 'bot/preview' , to: 'chatbots#preview'
            get 'bot/intent_mapping' , to: 'chatbots#intent_mapping'
            get 'bot/intent_chat' , to: 'chatbots#intent_chat'
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
