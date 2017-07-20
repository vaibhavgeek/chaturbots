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

#routes for the chaturbots chatbot
  resources :users , only: [:show , :edit] do 
      member do   
            get 'bot/index' , to: 'bots/chaturbots#index'
            post 'bot/login' , to: 'bots/chaturbots#login'
            post 'bot/payment_h' ,  to: 'bots/chaturbots#payment_h'
            post 'bot/fx_list' ,  to: 'bots/chaturbots#fx_list'
            post 'bot/benefeciary' ,  to: 'bots/chaturbots#benefeciary'
            post 'bot/destroy' ,  to: 'bots/chaturbots#destroy'
            get  'bot/show' ,  to: 'bots/chaturbots#show'
            post 'bot/create' , to: 'bots/chaturbots#create'
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
