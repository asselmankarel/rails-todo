Rails.application.routes.draw do
  root to: 'pages#index'

  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { registrations: 'api/v1/registrations', sessions: 'api/v1/sessions' }
      # post 'sign_in', to: 'sessions#create'
      # post 'sign_up', to: 'registrations#create'
    end
  end
end
