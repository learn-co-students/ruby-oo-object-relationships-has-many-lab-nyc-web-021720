class Song

    attr_accessor :name, :artist
    # attr_reader :artist

    @@all = []

    def initialize(name)
        @name = name
        # add song to array of songs
        @@all << self
    end 

    def self.all
        @@all
    end 

    def artist_name
        artist.name if artist
    end
    
end 