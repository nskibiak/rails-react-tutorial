Rails.application.routes.draw do
  root to: 'pages#home'
  get "posts/:id", to: 'pages#home'
  get "posts/new", to: 'pages#home'

  # API routing
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [ :index, :show, :create ]
      # you don't add :new because that is handled by React
      # but you need to :create in the db
    end
  end
end
