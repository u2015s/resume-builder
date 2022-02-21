Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'registration#new'
  post    'signup'  => 'registration#create'
  # get "projects" => "projects#new"
  # post "projects" => "projects#new"
  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  resources :projects, only: [:new]
end
