# frozen_string_literal: true

Rails.application.routes.draw do
  resources :wishes
  root "mailing_list_contacts#new"
  resources :mailing_list_contacts, only: [:new, :create, :show]
  devise_for :users

  get '/wishes' => "wishes#index", as: :user_root
end
