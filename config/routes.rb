Rails.application.routes.draw do
  get 'sign_up', to: "users#new"
  post 'create_user', to: "users#create"
  get 'sign_in', to: "sessions#new"
  post 'sign_in', to: "sessions#create"
  delete 'logout', to: 'sessions#destroy'
  root "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
