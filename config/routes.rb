Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'rooms', to: 'rooms#index'
  get 'room/:id', to: 'room#update'

  get 'hotels', to: 'hotels#index'
  get 'hotels/:id', to: 'hotels#show'
  patch 'hotels/:id', to: 'hotels#update'
  
  post 'users/', to: 'users#create'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  get '/popups', to: 'hotels#popups'
end
