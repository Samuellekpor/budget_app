Rails.application.routes.draw do
  # get 'groups/index'
  # get 'groups/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "groups#index"
  resources :users
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :activities, only: [:index, :show, :new, :create, :destroy]
  end
end
