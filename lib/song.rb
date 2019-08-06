class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #@artist = nil
  end

  def artist_name
    if @artist != nil
      return self.artist.name
    else
      return nil
    end
  end

  def self.all
    @@all
  end

  def self.print_all
    self.all.each do |song| #context of self is the class
      puts song.name
    end
  end

end
