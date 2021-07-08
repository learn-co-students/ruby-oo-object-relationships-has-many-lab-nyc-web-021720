require "pry"
class Song
    attr_accessor :name, :artist
     
    
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end
    
    def artist_name

        self.artist == nil ? nil : self.artist.name
        # binding.pry 
        # if self.name != self
        #     nil
        # else 
        #     self.name
        #  #binding.pry
        # end
    end

    def self.all
        @@all
    end
end



# binding.pry
"do you know it?"