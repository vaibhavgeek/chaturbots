Rails.application.routes.draw do
 

  

  get 'organisations/new'

  get 'organisations/edit'

  get 'organisations/show'
  get 'organisations/all_organisation_id'

# general show time routes
    get 'home/index'
    get 'home/contact_us'
    get 'home/about_us'
    get 'home/pricing'
    get 'organisations/:id/home' , to: 'home#main' , as: 'organisation_home'
 # get 'home/blog'
# routes for admin panel and customer support of client, enables them to see chats
  devise_for :users , :controllers => { :registrations => 'users/registrations' , :sessions => 'users/sessions' }

  root 'home#index'

  resources :organisations do 
    resources :intents
    resources :chats
    resources :messages 
    resources :previous_chats , :except => [ :create , :show , :index , :update , :destroy ]
    member do
      post 'previous_chats_d/:id1/:id2' , to: 'previous_chats#destroy' , as: "previous_chats_destroy"
      post 'previous_chats/:id1/:id2' , to: 'previous_chats#update' , as: "previous_chats_update"
      post 'notifications_ml/:auth' , to: 'notifications#ml' , as: "notifications_machinel" , defaults: { format: 'js' }
      post 'notifications_automate/:auth' , to: 'notifications#automate' , as: "notifications_automate" , defaults: { format: 'js' }
      get 'notifications_main/:auth' , to: 'notifications#main' ,  as: "notifications_main_organisation"
      get 'messages_all' , to: 'chats#show_all' 
      get 'show_all' , to: 'intents#show_all'
      get 'intents_all', to: 'intents#intents_all'
      get 'settings_account', to: 'settings#account'
      get 'settings_payment', to: 'settings#payment'
      get 'settings_messenger', to: 'settings#messenger'
      get 'settings_nlp', to: 'settings#nlp'  
      get 'bot/redirect' , to: 'chatbots#redirect'
      get 'bot/index/:auth_token' , to: 'chatbots#index' , as: 'chatbotmain'
      get 'bot/popup/:auth_token' , to: 'chatbots#popup', as: 'chatbotpopup'
      get 'bot/reports' , to: 'chatbots#reports'
      get 'bot/vdata' , to: 'chatbots#vdata'
      get 'bot/web_scraping', to: 'chatbots#web_scraping'
      post 'bot/update_visitor' , to: 'chatbots#update_visitor'
      get 'bot/preview' , to: 'chatbots#preview'
      get 'bot/intent_mapping' , to: 'chatbots#intent_mapping'
      get 'bot/intent_chat' , to: 'chatbots#intent_chat'
      get 'bot/spell_checker' , to: 'chatbots#spell_checker'
      get 'bot/web_scraping' , to: 'chatbots#scraper'
    end 
  end


 # get 'settings/payment'
 # get 'settings/account' 
 # patch 'bot/vedic-maths/update_visitor' , to: 'bots/vedicmaths#update_visitor'
#  patch 'bot/vedic-maths/payment_done' , to: 'bots/vedicmaths#payment_done'
#routes for the vedic-maths chatbot
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
