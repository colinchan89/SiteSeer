Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/show'

  get 'users/new'

  post 'users' => 'users#create'

#session routes
  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  root 'users#index'

  resources :users

end
