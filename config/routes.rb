Rails.application.routes.draw do
  root to: 'pages#index'

  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { registrations: :registrations, sessions: :sessions }
    end
  end
end
