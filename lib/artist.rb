#have many songs, have method that returns a collection of all the songs that belong to that artist

class Artist
  attr_accessor :name
  
  @@song_count =[]
  
  def initialize(name)
    @name = name
    @songarray = []
  end
  
  
  def add_song(song)
    song.artist = self
    @songarray << song
    @@song_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    add_song(song)
    @@song_count += 1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def song_count
    @@song_count
  end
end