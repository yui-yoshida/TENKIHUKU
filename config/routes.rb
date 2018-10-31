Rails.application.routes.draw do
  root 'tops#top'
  get 'relationships/create'
  get 'relationships/destroy'

  devise_for :users
  resources :users, :only => [:show] do
    member do
      get :following, :followers, :mypage, :favorite
    end
  end

  resources :pictures do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :favorites, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
