class PlaylistSongsController < ApplicationController

  def create
    playlist_song = PlaylistSong.create(playlist_song_params)
    playlist = Playlist.find(params[:playlist_id])
    render json: playlist
  end

  def remove_song
    deleted_playlist_song = PlaylistSong.find_by(playlist_song_params)
    deleted_playlist_song&.destroy
    render head: :ok
  end

  private

  def playlist_song_params
    params.require(:playlist_song).permit(:playlist_id, :song_id)
  end
end
