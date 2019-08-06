class Artist

  attr_accessor :name, :songs

  @@all_songs = []

  def self.all #this is required for using self.class.all
    @@all_songs
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self.class.all << song #self.class.all = all_songs class constant
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self #this self means this artist, artist of is equal to the artist that we're in right now - artist object inside song, vice versa
    self.class.all << song
  end

  def self.song_count
    self.class.all.length
  end

end
