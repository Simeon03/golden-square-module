require 'track'

RSpec.describe 'track method' do
    it 'matches a keyword to a song' do
        song_1 = Track.new("Hello", "Adelle")
        song_2 = Track.new("Happy", "William Farell")
        expect(song_1.matches?("Hi")).to eq false
    end
end