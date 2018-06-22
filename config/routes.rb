Rails.application.routes.draw do
  resources :users
  resources :portfolios
  #get 'pages/home'
  #get 'pages/about'
  get 'about-me',to: 'pages#about'
  get 'contact-us',to: 'pages#contact'
  resources :news
  resources :blogs
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
