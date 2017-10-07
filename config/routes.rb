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
  end 
  get 'settings/payment'
  get 'settings/account' 

#routes for the vedic-maths chatbot
  resources :users , only: [:show , :edit] do 
      member do
            #get 'bot/redirect' , to: 'bots/bank_hacks#redirect'   
            #get 'bot/index/:auth_token' , to: 'bots/bank_hacks#index' , as: 'chatbotmain'
           # post 'bot/login' , to: 'bots/bank_hacks#login'
            #post 'bot/payment_h' ,  to: 'bots/bank_hacks#payment_h'
            #post 'bot/fx_list' ,  to: 'bots/bank_hacks#fx_list'
           # post 'bot/benefeciary' ,  to: 'bots/bank_hacks#benefeciary'
            #post 'bot/destroy' ,  to: 'bots/bank_hacks#destroy'
            #get  'bot/show' ,  to: 'bots/bank_hacks#show'
            #get 'bot/intent' , to: 'bots/bank_hacks#intent'
            #get 'bot/reports' , to: 'bots/bank_hacks#reports'
            #get 'bot/preview' , to: 'bots/bank_hacks#preview'
           # post 'bot/create' , to: 'bots/bank_hacks#create'

            get 'bot/redirect' , to: 'bots/bank_hacks#redirect'   
            get 'bot/index/:auth_token' , to: 'bots/bank_hacks#index' , as: 'chatbotmain'
            post 'bot/login' , to: 'bots/bank_hacks#login'
            post 'bot/payment_h' ,  to: 'bots/bank_hacks#payment_h'
            post 'bot/fx_list' ,  to: 'bots/bank_hacks#fx_list'
            post 'bot/benefeciary' ,  to: 'bots/bank_hacks#benefeciary'
            post 'bot/destroy' ,  to: 'bots/bank_hacks#destroy'
            get  'bot/show' ,  to: 'bots/bank_hacks#show'
            get 'bot/intent' , to: 'bots/bank_hacks#intent'
            get 'bot/reports' , to: 'bots/bank_hacks#reports'
            get 'bot/preview' , to: 'bots/bank_hacks#preview'
            post 'bot/create' , to: 'bots/bank_hacks#create'
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
