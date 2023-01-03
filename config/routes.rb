# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/s/:slug', to: 'links#show', as: :short

  # root to: 'links#index'
  # get '/:short_url', to: 'links#show'
  # get 'shortened/:short_url', to: 'links#shortened', as: :shortened
  # post '/links/create'
  # get '/links/fetch_original_url'
  # resources :links

  root 'links#index'
  get 'r', to: 'redirects#index'
  resources :links
end
