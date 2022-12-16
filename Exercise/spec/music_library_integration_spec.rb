require 'music_library'
require 'track'

RSpec.describe 'integration testing' do
    it 'checks if it can add a track to the music library' do
        music_library = MusicLibrary.new
        track_1 = Track.new("Hello", "Adele")
        track_2 = Track.new("Happy", "William Farell")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it 'searches for a track using a keyword' do
        music_library = MusicLibrary.new
        track_1 = Track.new("Hello", "Adele")
        track_2 = Track.new("Happy", "William Farell")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("Hello")).to eq [track_1]
    end
end