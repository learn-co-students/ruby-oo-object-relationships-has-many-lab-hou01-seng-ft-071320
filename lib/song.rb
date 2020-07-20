class Song
    attr_accessor :name, :artist
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist = nil)
        @name = name
        @artist = artist
        self.class.all << self
    end

    def artist_name
        if self.artist != nil
            self.artist.name
        else
            nil
        end
    end

end

