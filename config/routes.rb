Rails.application.routes.draw do

  get 'users' => 'users#index'

  get 'users/show'

  get 'users/new'

  get 'users/:id/destinations' => 'users#destinations'

  post 'users' => 'users#create'

#session routes
  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  resources :destinations

  root 'users#index'

end
