Rails.application.routes.draw do
  # api
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      resources :contents, only: %i[index show] do
        resources :seasons, only: %i[index show] do
        end
      end
    end
  end

  # admin panel
  devise_for :admins
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
