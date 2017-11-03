# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated :user do
    root 'docs#index', as: 'authenticated_user'
  end

  root 'welcome#index'
end
