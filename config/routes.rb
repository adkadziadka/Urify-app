Rails.application.routes.draw do
  resources :artists
  resources :songs

  root to: 'pages#home'
end