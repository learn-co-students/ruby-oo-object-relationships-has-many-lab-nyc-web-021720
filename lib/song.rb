require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end

  def self.song_count
    Song.all.count
  end
end

#eatit = Song.new("Eat It")

#puts "something"
