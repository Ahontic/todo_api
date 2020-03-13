# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/auth/sign_in', to: 'authentication#login'
      post '/auth', to: 'users#create'

      resources :projects, shallow: true do
        resources :tasks, except: %i[show]
      end
    end
  end
end
