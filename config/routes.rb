Rails.application.routes.draw do

  resources :school_modules
  resources :students
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout'    => 'sessions#destroy'
  get 'admin' => 'admin#index'
end
