require 'pry'
class Artist
    attr_accessor :name, :song
    
    def initialize(name)
        @name=name
    end
  
    def add_song(song)
        song.artist=self
        Song.all<<song
    end

    def songs
       Song.all.each do |song|
        song.artist==self
       end
    end

    def add_song_by_name(song_name)
        new_song=Song.new(song_name)
        new_song.artist=self
    end

    def self.song_count
       arr=Song.all.select {|song|
        song.artist != nil
        }
    arr.uniq.count
    #binding.pry
    end
end