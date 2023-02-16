class PlaylistSongsController < ApplicationController

  def create
    playlist_song = PlaylistSong.create(playlist_song_params)
    # byebug
    playlist = Playlist.find(params[:playlist_id])
    render json: playlist
  end

  private

  def playlist_song_params
    params.require(:playlist_song).permit(:playlist_id, :song_id)
  end
end
