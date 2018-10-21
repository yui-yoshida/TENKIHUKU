Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'

  devise_for :users
  resources :users, :only => [:show]
  get "users/followers/:id", to: "users#followers"
  get "users/following/:id", to: "users#following"
  root 'pictures#index'

  resources :pictures do
    collection do
      post :confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :favorites, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
