class PlaylistsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    playlists = Playlist.all
    render json: playlists
  end
  
  def create
    playlist = Playlist.create(playlist_params)
    render json: playlist
  end

  def update
    playlist = Playlist.find(params[:id])
    playlist.update(playlist_params)
    render json: playlist
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :user_id)
  end
end

