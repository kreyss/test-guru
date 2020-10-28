Rails.application.routes.draw do

  devise_for :add_type_to_users
  devise_for :add_to_users
  root 'tests#index'

  #devise_for :users, path: :gurus, path_names: { sign_in: :login, sign_out: :logout }

  resources :tests, only: :index do
    resources :questions, shallow: true, only: :show do
      resources :answers, shallow: true, only: :show
    end

    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get  :result
      post :gist
    end
  end

  namespace :admin do
    root 'tests#index'
    
    resources :tests do
      patch :update_inline, on: :member
      
      resources :questions, shallow: true, except: :index do
        resources :answers, shallow: true
      end
    end
    resources :gists, only: :index
  end
end