Rails.application.routes.draw do
  resources :role_permissions
  resources :permissions
  resources :roles
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # config/routes.rb
  resources :users
  root "home#index"
  resources :experiences
  resources :holidays
  resources :salaries
  resources :performances
  resources :departments
  resources :employees
  resources :events
  resources :leaves
  
end