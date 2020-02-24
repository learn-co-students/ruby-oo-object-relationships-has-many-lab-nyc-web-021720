class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        @artist = nil
        Song.all << self
    end

    def self.all
        @@all
    end

   def artist_name
    #find the songs artist
    # return that artist's name
        self.artist ? self.artist.name : nil
   end
end