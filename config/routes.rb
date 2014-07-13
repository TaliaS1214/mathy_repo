Rails.application.routes.draw do

  # Welcome Page
  root('welcome#index')

  # Resources and Articles
  resources :subjects do
    resources :articles
  end

  # Sessions
  get '/login'   => 'sessions#new', as: 'login'
  post 'sessions'=> 'sessions#create'
  get '/logout'  => 'sessions#destroy', as: 'logout'

  # Users
  resources :users

end
