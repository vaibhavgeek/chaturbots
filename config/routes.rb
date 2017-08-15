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
            get 'bot/redirect' , to: 'bots/vedicmaths#redirect'   
            get 'bot/index/:auth_token' , to: 'bots/vedicmaths#index' , as: 'chatbotmain'
            post 'bot/login' , to: 'bots/vedicmaths#login'
            post 'bot/payment_h' ,  to: 'bots/vedicmaths#payment_h'
            post 'bot/fx_list' ,  to: 'bots/vedicmaths#fx_list'
            post 'bot/benefeciary' ,  to: 'bots/vedicmaths#benefeciary'
            post 'bot/destroy' ,  to: 'bots/vedicmaths#destroy'
            get  'bot/show' ,  to: 'bots/vedicmaths#show'
            get 'bot/preview' , to: 'bots/vedicmaths#preview'
            post 'bot/create' , to: 'bots/vedicmaths#create'
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
