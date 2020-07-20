require 'pry'
class Artist
    attr_accessor :song, :artist 
    attr_reader :name 

    
    def initialize(name)
        @name = name
        
    end

    def songs
        songs = Song.all.select {|song| song.artist == self}
        songs 
    end
    
    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(name)
        x = Song.new(name)
        self.add_song(x)
    end

    def self.song_count
        Song.all.size
    end

end