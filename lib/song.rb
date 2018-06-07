require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

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
    i = 0
    genre_hash = {}
    # i need to take the genre for each song initialized and add one to the tally of songs in that genre each time.
    #so i need to count the number of repeating elements in an array
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] = i + 1
        i += 1

    end
    genre_hash

  end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

p Song.genre_count


end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#
# p ninety_nine_problems.name
#   # => "99 Problems"
#
# p ninety_nine_problems.artist
#   # => "Jay-Z"
#
# p ninety_nine_problems.genre
  # => "rap"
