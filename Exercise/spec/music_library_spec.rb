require 'music_library'

RSpec.describe 'music library method' do

    it 'adds a track to the array' do
        music_library = MusicLibrary.new
        add_track_1 = double :new_track_1
        add_track_2 = double :new_track_2
        music_library.add(add_track_1)
        music_library.add(add_track_2)
        expect(music_library.all).to eq [add_track_1, add_track_2]
    end

    it 'return a list of tracks matching the keyword' do
        music_library = MusicLibrary.new
        add_track_1 = double :track, matches?: true
        add_track_2 = double :track, matches?: false
        music_library.add(add_track_1)
        music_library.add(add_track_2)
        expect(music_library.search("Hello")).to eq [add_track_1]
    end

end