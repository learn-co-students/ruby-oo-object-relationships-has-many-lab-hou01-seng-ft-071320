require 'pry'
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist.name == self.name}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        Song.new(song, self)
    end

    def self.song_count
        Song.all.length
    end

    def artist_name
        binding.pry
        if self.artist != nil
            self.artist.name
        else
            nil
        end
    end

end

