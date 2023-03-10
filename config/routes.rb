Rails.application.routes.draw do
  resources :playlist_songs
  resources :playlists
  resources :users
  resources :song_chords
  resources :chords
  resources :songs
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post '/likes', to: 'likes#create'
  delete '/likes/:id', to: 'likes#destroy'
  resources :ws
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
