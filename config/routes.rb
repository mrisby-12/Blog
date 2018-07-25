Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get '/pages', to: 'pages#index'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
  post '/pages', to: 'pages#create'
end
