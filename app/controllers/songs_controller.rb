class SongsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    
    def index 
        render json: Song.all
    end

    def create
        song = Song.create(song_params)
        song.create_chords(chord_params)
        render json: song
    end 

    def show
        song = Song.find(params[:id])
        render json: song
    end

    def update
        song = Song.find(params[:id])
        user_id = song.user_id
        if @user.id == user_id
            song.update(song_params)
            song.song_chords.delete_all
            song.create_chords(chord_params)
        end
        render json: song
    end

    def destroy
        song = Song.find(params[:id])
        user_id = song.user_id
        if @user.id == user_id
            song.destroy
            songs = Song.all.select {|song| song.user_id === user_id}
        end
    end
    
    private

    def song_params 
        params.require(:song).permit(
            :user_id,
            :name,
            :bpm, 
            :swing,
            :instrument, 
            :melodyInstrument,
            :melodyKey, 
            :melodyMode,
            :snareBeats => [], 
            :kickBeats => [],
            :hhBeats => [],
            :iBeats => {},
            :iiBeats => {},
            :iiiBeats => {},
            :ivBeats => {},
            :vBeats => {},
            :viBeats => {},
            :viiBeats => {},
            :IBeats => {}
        )
    end

    def chord_params
        params.permit(:chords => [
                :bass,
                :name,
                :quality,
                :duration,
                :start_beat
            ]
        )
    end
end
