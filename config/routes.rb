Rails.application.routes.draw do
  get 'chats/index'

  get 'chats/show'

  get 'chats/update'

  get 'chats/destroy'

  get 'settings/payment'

  get 'settings/account'

  devise_for :users
  get 'home/index'
  get 'home/contact_us'
  get 'home/about_us'

  root 'home#index'
  resources :users , only: [:show , :edit] do 
  	resources :chats
  end 
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
