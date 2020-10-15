Rails.application.routes.draw do
  resources :likes
  resources :users
  resources :song_beats
  resources :beats
  resources :song_chords
  resources :chords
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
