class Artist
    
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        # add instance of new artist to array @@all
        # @songs = []
        @@all << self
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all
    end 

    def add_song(song_name)
        song_name.artist = self

    end 

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end 

    def self.song_count
        Song.all.count
    end 
end 