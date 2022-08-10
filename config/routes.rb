# frozen_string_literal: true

require 'resque/server'
Rails.application.routes.draw do
  mount Resque::Server.new, at: '/resque'
  resources :registrations
  root 'registrations#new'
end
