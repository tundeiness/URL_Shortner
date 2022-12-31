Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :urls, only: [:index, :new, :create, :show]
end
