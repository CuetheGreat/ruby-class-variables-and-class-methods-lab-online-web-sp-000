class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    
    if @@genres.detect? { |i| i == genre}
      @@genre_count[genre] += 1
    else
      @@genres << genre
      @@genre_count[genre] = 0
    end
    
    if @@artists.find? { |i| i == artist}
      @@artist_count[genre] += 1
    else
      @@artists << artist
      @@artist_count[artist] = 0
    end
  end
  
  def self.count
    count
  end
  
  def self.genres
    @@genres
  end
  
  def self.artists
    @@artists
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@genre_count
  end
  
end