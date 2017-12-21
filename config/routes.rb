Rails.application.routes.draw do
 

  get 'organisations/new'

  get 'organisations/edit'

  get 'organisations/show'

# general show time routes
    get 'home/index'
    get 'home/contact_us'
    get 'home/about_us'
 # get 'home/blog'
# routes for admin panel and customer support of client, enables them to see chats
  devise_for :users , :controllers => { :registrations => 'users/registrations' , :sessions => 'users/sessions'}

  root 'home#index'

  resources :organisations do 
    member do
      resources :chats
      resources :intents 
      get 'show_all' , to: 'intents#show_all'
      get 'intents_all', to: 'intents#intents_all'
      get 'settings_account', to: 'settings#account'
      get 'settings_payment', to: 'settings#payment'
      get 'settings_messenger', to: 'settings#messenger'
      get 'settings_nlp', to: 'settings#nlp'  
      get 'bot/redirect' , to: 'chatbots#redirect'
      get 'bot/index/:auth_token' , to: 'chatbots#index' , as: 'chatbotmain'
      get 'bot/reports' , to: 'chatbots#reports'
      get 'bot/preview' , to: 'chatbots#preview'
      get 'bot/intent_mapping' , to: 'chatbots#intent_mapping'
      get 'bot/intent_chat' , to: 'chatbots#intent_chat'
      get 'bot/spell_checker' , to: 'chatbots#spell_checker'
    end 
  end


 # get 'settings/payment'
 # get 'settings/account' 
 # patch 'bot/vedic-maths/update_visitor' , to: 'bots/vedicmaths#update_visitor'
#  patch 'bot/vedic-maths/payment_done' , to: 'bots/vedicmaths#payment_done'
#routes for the vedic-maths chatbot
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
