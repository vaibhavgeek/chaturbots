Rails.application.routes.draw do
 

# general show time routes
  get 'home/index'
  get 'home/contact_us'
  get 'home/about_us'

# routes for admin panel and customer support of client, enables them to see chats
  devise_for :users
  root 'home#index'
  resources :users , only: [:show , :edit] do 
  	resources :chats
  end 
  get 'settings/payment'
  get 'settings/account' 

#routes for the instarem chatbot
  resources :users , only: [:show , :edit] do 
      member do   
            get 'bot/index' , to: 'bots/instarem#index'
            post 'bot/login' , to: 'bots/instarem#login'
            post 'bot/payment_h' ,  to: 'bots/instarem#payment_h'
            post 'bot/fx_list' ,  to: 'bots/instarem#fx_list'
            post 'bot/benefeciary' ,  to: 'bots/instarem#benefeciary'
            post 'bot/destroy' ,  to: 'bots/instarem#destroy'
            get  'bot/show' ,  to: 'bots/instarem#show'
            post 'bot/create' , to: 'bots/instarem#create'
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
