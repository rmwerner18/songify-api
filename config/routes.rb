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
  post '/playlist_songs/remove_song', to: 'playlist_songs#remove_song' 
  get '/playlists/user/:user_id', to: 'playlists#playlists_by_user'
  resources :ws
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
