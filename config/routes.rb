Rails.application.routes.draw do
  resources :articles
  get 'about', to: 'articles#about', as: 'about' 
  root 'articles#home' 
end
