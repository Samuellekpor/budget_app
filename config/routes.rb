Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # get 'groups/index'
  # get 'groups/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'splash#index'
  end
  
  resources :groups, only: [:index, :show, :new, :create]
  resources :activities, only: [:new, :create]
end
