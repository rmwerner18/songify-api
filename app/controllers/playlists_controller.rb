class PlaylistsController < ApplicationController
  
  def create
    playlist = Playlist.create(playlist_params)
    byebug
    render json: playlist
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :user_id)
  end
end

