Rails.application.routes.draw do
  resources :bookings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/about'

  resources :sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: redirect('/sweets')
end
