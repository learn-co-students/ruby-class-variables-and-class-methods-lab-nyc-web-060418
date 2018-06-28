require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@all << self
    @@count += 1
    # binding.pry
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
    counts = Hash.new(0)
    @@genres.each do |genre|
      counts[genre] += 1
    end
    counts
    # binding.pry
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each do |artist|
      count[artist] +=1
    end
    count
  end

end
