class MusicLibrary
    def initialize
      @music_library = []
    end
  
    def add(track)
      @music_library << track
    end
  
    def all
        @music_library
    end
    
    def search(keyword)
      @music_library.select { |track| track.matches?(keyword)}
    end
end