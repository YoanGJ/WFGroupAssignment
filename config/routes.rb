Rails.application.routes.draw do

  resources :lecturers
  resources :module_admins
  resources :school_modules
  resources :students
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout'    => 'sessions#destroy'
  get 'admin' => 'admin#index'
  get 'signup_school_module' => 'school_modules#new'
  post 'signup_school_module' => 'school_modules#create'
  get 'signup_module_admin' => 'module_admins#new'
  post 'signup_module_admin' => 'module_admins#create'
  get 'signup_lecturer' => 'lecturers#new'
  post 'signup_lecturer' => 'lecturers#create'
  get 'signup_student' => 'students#new'
  post 'signup_student' => 'students#create'
end
