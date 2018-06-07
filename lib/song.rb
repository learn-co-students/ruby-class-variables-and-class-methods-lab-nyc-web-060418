class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@genres = []
  @@artists =[]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre

    @@artists.push(@artist)
  end



  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    res = {}
    @@artists.each do |item|
      res[item] == nil ? res[item] = 1 : res[item] +=1
    end
    res
  end

  def self.genre_count
    res = {}
    @@genres.each do |item|
      res[item] == nil ? res[item] = 1 : res[item] +=1
    end
    res
  end
end
