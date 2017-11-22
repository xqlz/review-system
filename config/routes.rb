# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books do
  	resources :reviews
  end
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  root 'books#index'
end
