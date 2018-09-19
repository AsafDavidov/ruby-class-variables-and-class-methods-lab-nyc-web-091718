require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count  = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    #create hash
    genre_hash = {}
    #go throw genres array
    @@genres.each do |genre|
      #if its a new genre place it into as new key with count = 1
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end

    return genre_hash
    #else increment count by 1
    #return hash
  end

  def self.artist_count
    #create hash
    artist_hash = {}
    #go throw artist array
    @@artists.each do |artist|
      #if its a new artist place it into as new key with count = 1
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end

    return artist_hash
    #else increment count by 1
    #return hash
  end

end #End of song class

#binding.pry
