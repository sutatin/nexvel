Rails.application.routes.draw do

  resources :interest_memos
  get 'interest_memo/new.:interest_id' => 'interest_memo#create'
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
