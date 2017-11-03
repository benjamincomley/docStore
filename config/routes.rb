# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  resources :docs
end
