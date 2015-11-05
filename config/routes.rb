Rails.application.routes.draw do

  root 'users#index'
  # get 'users' => 'users#index'
  #
  # get 'users/show'
  #
  # get 'users/new'
  #
  #
  # post 'users' => 'users#create'

#session routes
  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
#route for all destinations
  get 'users/destinations' => 'users#destinations'

  resources :users do
  resources :destinations
  end

end
