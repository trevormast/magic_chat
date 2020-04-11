Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'chatrooms#index'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :chatrooms, param: :topic

  resources :messages
end

