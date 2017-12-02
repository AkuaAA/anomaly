Rails.application.routes.draw do
  get 'pages/about'

  resources :sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: redirect('/sweets')
end
