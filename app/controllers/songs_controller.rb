class SongsController < ApplicationController
    def index 
        songs = Song.all
        render json: songs
    end

    def create
        song = Song.create(song_params)
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
    end

    def destroy
        song = Song.find(params[:id])
        song.destroy
        songs = Song.all
        render json: songs
    end
    private

    def song_params 
        params.require(:song).permit(
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
