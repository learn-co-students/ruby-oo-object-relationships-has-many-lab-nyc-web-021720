
require 'pry'
class Song 

    attr_accessor :name , :artist

    @@all = []

 
    def initialize(name)
        @name = name 
        save 
    end 

    def save
        self.class.all << self 
        
    end 

    def self.all 
        @@all 

    end 

    def artist_name 
        if self.artist
            self.artist.name

        else 
            nil 

        end 


    end 





end 



# describe '#artist_name' do
# it 'knows the name of its artist' do
#   drake = Artist.new('Drake')
#   song.artist = drake
#   expect(song.artist_name).to eq('Drake')
# end

# it 'returns nil if the song does not have an artist' do
#   expect(song.artist_name).to eq nil
# end

#Artist #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
