#have many songs, have method that returns a collection of all the songs that belong to that artist

class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def song_count
    Song.all.each {|song| 
  end

end