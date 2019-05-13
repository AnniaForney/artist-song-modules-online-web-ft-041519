require 'pry'
require_relative '../config/environment'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  @@artists = []

  attr_accessor :name
  attr_reader :songs

  def initialize
    @@artists << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end



  def self.all
    @@artists
  end

  def self.count
    self.all.count
  end
end
