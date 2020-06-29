# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  # tells rails to map requests to the root of the application to the welcome controllers index action
end
