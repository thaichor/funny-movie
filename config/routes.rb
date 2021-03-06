Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  post    :login_or_register, to: 'sessions#create'
  delete  :logout, to: 'sessions#destroy'

  resources :movies, only: %i[new create]
end
