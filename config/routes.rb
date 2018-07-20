Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get '/pages', to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
