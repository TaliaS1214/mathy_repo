Rails.application.routes.draw do

  # Welcome Page
  root('welcome#index')

  # About Page
  get '/about' => 'about#index', as: 'about'

  # Resources and Articles
  resources :subjects do
    resources :articles do
      resources :problems
    end
  end

  # Sessions
  get '/login'   => 'sessions#new', as: 'login'
  post 'sessions'=> 'sessions#create'
  get '/logout'  => 'sessions#destroy', as: 'logout'

  # Users
  resources :users

end
