
class Artist
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    n_song = Song.new(name, self, genre)
    n_song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    genres_list = []
    songs.each {|song|genres_list << song.genre}
    genres_list
  end
  
  
end