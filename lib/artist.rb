class Artist 

    attr_accessor :name, :artist 
@@all=[]

    def initialize(name)
         @name=name
         @artist=artist
         @@all << self
        end
    def songs
        Song.all.select do |music|
            music.artist==self 
        end
        #itterates through the array usingthe select enumerable and get
        #each of the songs artists to 
        
        
    end
    def add_song(song)
       song.artist=self
        
    end
    def add_song_by_name(name)
        song=Song.new(name)
        song.artist=self
    end
    
    
    
      def self.song_count
        Song.all.count
      end
    

end
