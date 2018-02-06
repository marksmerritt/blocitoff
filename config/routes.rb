Rails.application.routes.draw do

  devise_for :users 

  resources :users, only: [:show] do 
    resources :items, only: [:create, :destroy]
  end

  # Root to login page
  devise_scope :user do 
    root to: "devise/sessions#new"
  end
end
