class Song
    attr_accessor :artist, :name
    attr_reader :song_name

    @@all = []

    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name
        else 
            return nil
        end
    end
end