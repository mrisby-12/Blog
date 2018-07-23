Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get '/pages', to: 'pages#index'
  get '/pages/:id', to: 'pages#show', as: 'page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
