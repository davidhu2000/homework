Rails.application.routes.draw do
  resources :books, only: [:index, :destroy, :new, :create]

  root 'books#index'
end
