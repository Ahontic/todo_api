# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: redirect('/docs.html')
  namespace :api do
    namespace :v1 do
      post '/auth/sign_in', to: 'authentication#login'
      post '/auth', to: 'users#create'

      resources :projects, shallow: true do
        resources :tasks
      end
    end
  end
end
