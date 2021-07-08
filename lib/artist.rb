require "pry"
class Artist
    attr_accessor :name 
    # attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        # self.clas.all << self
    end


    def add_song(song)
        #associates with 
        song.artist = self  
       
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
      end

    def songs
        # connecting to the Song class and looking at all the songs in that class
        Song.all
    end

    def self.song_count
        Song.all.length 
    end

    def self.all
        @@all
    end
end

leah = Artist.new("leah")
andrew = Artist.new("andrew")
# binding.pry
"im an artist"