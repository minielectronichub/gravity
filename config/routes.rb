Rails.application.routes.draw do
  get "labs/index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
 
  devise_for :users
  resources :experiments 
  resources :labs
  
  match '/welcome/about' => 'welcome#about', as: :about, via: :get
  get '/search' => "experiments#search"

end