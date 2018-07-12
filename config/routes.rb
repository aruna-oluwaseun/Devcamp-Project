Rails.application.routes.draw do
  resources :users
  resources :portfolios,except: [:show]
  get 'portfolio/angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show',as: 'portfolio_show'


  #get 'pages/home'
  #get 'pages/about'
  
  get 'about-me',to: 'pages#about'
  get 'contact-us',to: 'pages#contact'
  resources :news
  
  resources :blogs do
    member do
    get :toggle_status

  end
end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
