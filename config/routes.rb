Rails.application.routes.draw do
  # api
  mount_devise_token_auth_for 'User', at: 'auth'

  # admin panel
  devise_for :admins
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
