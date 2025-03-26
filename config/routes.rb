Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "patients#index"

  resources :patients
  resources :admissions
  resources :appointments

  namespace :departments do
    resources :appointments
    resources :appointments
  end
end