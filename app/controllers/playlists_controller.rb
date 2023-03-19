class PlaylistsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :playlists_by_user]

  def index
    playlists = Playlist.all
    render json: playlists
  end

  def playlists_by_user
    playlists = Playlist.where(user_id: params[:user_id])
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

  def show
    playlist = Playlist.find(params[:id])
    render json: playlist
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :user_id)
  end
end

