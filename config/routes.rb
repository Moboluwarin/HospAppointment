Rails.application.routes.draw do
  devise_for :users
resources :doctors
root 'doctors#index'
resources :doctors do
  resources :patients
end
end
