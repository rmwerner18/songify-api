class SongsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    
    def index 
        songs = Song.all
        render json: songs
    end

    def create
        song = Song.create(song_params)
        chord_params["chords"].each do |chord|
            # puts chord
            # compare params to db better via bass name and quaity
            # consider coding order of chords as attrs
            existing_chord = Chord.all.find {|c| c['name'] == chord['name'] and c['bass'] == chord['bass'] and c['quality'] == chord['quality']}
            if existing_chord 
                SongChord.create(chord_id: existing_chord.id, song_id: song.id)
            else 
                chord = Chord.create(chord)
                SongChord.create(chord_id: chord.id, song_id: song.id)
            end
        end
        render json: song
    end 

    def show
        song = Song.find(params[:id])
        render json: song
    end

    def update
        song = Song.find(params[:id])
        song.update(song_params)
        song.song_chords.delete_all
        chord_params["chords"].each do |chord|
            puts chord
            existing_chord = Chord.all.find {|c| c == chord}
            if existing_chord 
                SongChord.create(chord_id: existing_chord.id, song_id: song.id)
            else 
                chord = Chord.create(chord)
                SongChord.create(chord_id: chord.id, song_id: song.id)
            end
        end
        render json: song
    end

    def destroy
        song = Song.find(params[:id])
        user_id = song.user_id
        song.destroy
        songs = Song.all.select {|song| song.user_id === user_id}
    end
    
    private

    def song_params 
        params.require(:song).permit(
            :user_id,
            :name,
            :bpm, 
            :instrument, 
            :melodyKey, 
            :melodyMode,
            :snareBeats => [], 
            :kickBeats => [],
            :hhBeats => [],
            :iBeats => [],
            :iiBeats => [],
            :iiiBeats => [],
            :ivBeats => [],
            :vBeats => [],
            :viBeats => [],
            :viiBeats => [],
            :IBeats => []
        )
    end

    def chord_params
        params.permit(:chords => [
                :bass,
                :formattedBass,
                :formattedName,
                :formattedQuality,
                :name,
                :quality,
                :freqs => []
            ]
        )
    end
end
