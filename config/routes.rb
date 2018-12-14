Rails.application.routes.draw do
  resources :invoices
  resources :courses
  resources :users
  post 'sessions/', :controller => 'sessions', :action => 'create'

end
