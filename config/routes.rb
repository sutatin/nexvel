Rails.application.routes.draw do

  resources :interest_memos
  resources :interests
  resources :interests
  resources :interests
  resources :companies
  get 'admincompanies',to:'admincompanies#index'


  root to: 'static_pages#home'

  get 'signup',to:'users#new'
  get 'login',to:'sessions#new'
  post 'login',to:'sessions#create'
  delete 'logout',to:'sessions#destroy'

  
  resources :users
  resources :sessions, only: [:new,:create,:destroy]

end
