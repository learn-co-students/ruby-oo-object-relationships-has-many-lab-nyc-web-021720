class Song

    attr_accessor :artist
    @@all = []

    def initialize(song_name)
        @name = song_name
        Song.all << self
    end

    def name
        @name
    end 

    def artist_name
        @artist ? @artist.name : nil
    end

    def self.all
        @@all
    end
end