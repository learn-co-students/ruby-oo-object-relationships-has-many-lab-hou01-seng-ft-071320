class Song
    attr_accessor :artist, :song, :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end

    def artist
        self.artist=@artist
    end
    
    def songs
        @@all
    end

    def self.all
        @@all
    end

    def artist_name
        if (self.artist == nil)
            return 
        else
            return self.artist.name
        end
    end
end