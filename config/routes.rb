Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  scope module: :api do
    namespace :v1 do
      resources :health_check, only: :index
    end
  end
end
