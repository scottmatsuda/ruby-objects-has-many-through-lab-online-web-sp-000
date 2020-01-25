
class Genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    artists_lists = []
    songs.each {|song| artists_lists << song.artist }
    artists_lists
  end
  
end