class Artist
    attr_accessor :name, :song

    def initialize(name)
        @name=name
    end
  
    def add_song(song)
        song.artist=self
        @all_song<<song
    end

    def songs
       # self.songs
    end

    def add_song_by_name(song_name)
        new_song=Song.new(song_name)
        new_song.artist=self
    end

    def self.song_count
        #self.songs.size
    end
end