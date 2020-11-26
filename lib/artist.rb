require "pry"
class Artist 

    attr_accessor :name 

    @@all = []
    def initialize (name)
        @name = name
        Artist.all << self 
    end

    def self.all   
        @@all
    end 
    
    def songs
        Song.all.select do |song_obj|
            song_obj.artist == self
        end
    end

    def add_song(song)
        song.artist = self 
        # Song.all << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self 
    end

    def self.song_count
        Song.all.count
    end

end 