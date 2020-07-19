class Song
    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def artist_name
    #   artist.name if artist
        if artist
            self.artist = artist.name
        end
    end
end