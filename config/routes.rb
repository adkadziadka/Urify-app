Rails.application.routes.draw do
  root to: 'pages#home'

  resources :artists, only: [:show]do
    resources :songs

  get "artists"        => "artists#index"
  get 'artists/new'    => 'artists#new', as: :new_artist
  get "artists/:id"    => "artists#show", as: :artist

  post "artist"        => 'artists#create'

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
