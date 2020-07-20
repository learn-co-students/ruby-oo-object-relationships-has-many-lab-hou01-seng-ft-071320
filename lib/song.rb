class Song
    attr_accessor :artist, :song, :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
        self.artist=@artist
    end
    
    def songs
        @@all
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist=@artist.name
    end
end