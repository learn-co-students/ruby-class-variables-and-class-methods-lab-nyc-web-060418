class Song

  @@count = 0
  @@genres = []
  @@artists = []

attr_accessor :name, :artist, :genre

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    list = {}
    @@genres.each do |type|
      if list[type] == nil
        list[type] = 1
      else
        list[type] += 1
      end
    end
      list
    end

    def self.artist_count
      list_artist = {}
      @@artists.each do |type|
        if list_artist[type] == nil
          list_artist[type] = 1
        else
          list_artist[type] += 1
        end
      end
        list_artist
      end
end
