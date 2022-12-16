class Track
    def initialize(title, artist)
        @title, @artist = title, artist
    end
  
    def matches?(keyword)
      @title.include?(keyword) || @artist.include?(keyword)
    end
end