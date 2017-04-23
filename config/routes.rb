Rails.application.routes.draw do
  resources :school_modules
  resources :students
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
end
