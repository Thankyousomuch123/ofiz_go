Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

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