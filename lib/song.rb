class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    helper_genre_hash = {}
    @@genres.each do |genre|
      helper_genre_hash[genre] = @@genres.count(genre)
    end
    return helper_genre_hash
  end

  def self.artist_count
    helper_artist_hash = {}
    @@artists.each do |artist|
      helper_artist_hash[artist] = @@artists.count(artist)
    end
    return helper_artist_hash
  end

end
