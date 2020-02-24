class Song

attr_accessor :artist, :name, :genre

    @@all = []

    def initialize(name)
        @name = name 
        save_song
    end

    def save_song
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name 
        artist.name if artist
    end

end


