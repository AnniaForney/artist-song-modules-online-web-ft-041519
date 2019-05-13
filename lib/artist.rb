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

  def add_songs(song)
    # [1, 2, 3].each { |n| puts "Current number is: #{n}" }
    songs.each { |song| add_songs(song) }
  end

  # [1, 2, 3].each { |n| puts "Current number is: #{n}" }

  # [1, 2, 3].each do |n|
  #   puts "Current number is: #{n}"
  # end

  def self.all
    @@artists
  end

  def self.count
    self.all.count
  end

end
