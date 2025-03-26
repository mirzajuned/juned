Rails.application.routes.draw do
  resources :patients
  root "patients#index"
  resources :patients 
  namespace :department do
  
    resources :appointments, only: [:create]
    resources :admissions, only: [:create]
  
  end
end