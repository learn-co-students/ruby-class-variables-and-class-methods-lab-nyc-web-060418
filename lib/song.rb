class Song

  attr_accessor :name, :artist, :genre
  @@count = 1
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist= artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.keys.include?(genre)
        genre_hash[genre] = genre_hash[genre] + 1
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.keys.include?(artist)
        artist_hash[artist] = artist_hash[artist] + 1
      else
        artist_hash[artist] = 1
      end
    end
    return artist_hash
  end
end
