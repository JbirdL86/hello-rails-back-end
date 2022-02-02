# frozen_string_literal: true

Rails.application.routes.draw do
  resources :greetings

  root 'greetings#index'
end
