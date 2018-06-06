require 'pry'

class Song

  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist

    @@artists << artist

    @genre = genre
    @@genres << genre

    @@count += 1
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
    return_hash = {}
    self.genres.each do |genre|
      return_hash[genre] = 0
    end
    @@genres.each do |genre|
      return_hash[genre] +=1
    end
    return return_hash
  end

  def self.artist_count
    return_hash = {}
    self.artists.each do |artist|
      return_hash[artist] = 0
    end
    @@artists.each do |artist|
      return_hash[artist] +=1
    end
    return return_hash
  end


end

#binding.pry
