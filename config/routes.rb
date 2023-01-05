Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'rooms', to: 'rooms#index'
  get 'room/:id', to: 'room#update'

  get 'hotels', to: 'hotels#index'
  get 'hotel/:id', to: 'hotel#show'
  
  post 'users/', to: 'users#create'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
end
