Rails.application.routes.draw do
  get 'sign_up', to: "users#new"
  post 'sign_up', to: "users#create"
  get '/', to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
