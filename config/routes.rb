Rails.application.routes.draw do

  resources :companies

  resources :interests
  post 'interests/add_company',to:'interests#add_company'
  
  resources :interest_memos
  get 'interest_memo/new.:interest_id',to:'interest_memo#create'

  resources :users
  resources :sessions, only: [:new,:create,:destroy]
  get 'signup',to:'users#new'
  get 'login',to:'sessions#new'
  post 'login',to:'sessions#create'
  delete 'logout',to:'sessions#destroy'

  root to: 'static_pages#home'
  get 'admincompanies',to:'admincompanies#index'
  

end
