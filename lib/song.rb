require 'pry'

class Song

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists.push(@artist)
    @genre = genre
    @@genres.push(@genre)
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      #binding.pry
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

  def self.artist_count
    #iterate through @@artists array,
    #for each artist, make a key, and make the value
    #the number of times it appears in the array
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
#binding.pry
end
