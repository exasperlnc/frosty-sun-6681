Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hospital, only: [:show]
  resources :patient, only: [:index]
  resources :doctor, only: [:show]
  namespace :doctor do
    resources :doctor_patient, only: [:destroy]
  end
end
