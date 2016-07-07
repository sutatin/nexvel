Rails.application.routes.draw do

  resources :interest_memos
  resources :interests
  post 'interests/addCompany',to:'interests#addCompany'
  
  resources :companies
  get 'interest_memo/new.:interest_id' => 'interest_memo#create'

  root to: 'static_pages#home'

  get 'signup',to:'users#new'
  get 'login',to:'sessions#new'
  post 'login',to:'sessions#create'
  delete 'logout',to:'sessions#destroy'

  get 'admincompanies',to:'admincompanies#index'
  
  resources :users
  resources :sessions, only: [:new,:create,:destroy]

end
