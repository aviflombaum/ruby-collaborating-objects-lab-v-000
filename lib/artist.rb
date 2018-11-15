class Artist
  attr_accessor :name, :songs
  @@all = []


  # Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
  # NoMethodError:
  #   undefined method `find_or_create_by_name' for Artist:Class
  def self.find_or_create_by_name(artist_name)
    # artist = @@all.find{|a| a.name == artist_name}
    # return artist if artist
    #
    # artist = Artist.new(artist_name)

    @@all.find{|a| a.name == artist_name} || Artist.new(artist_name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
end
