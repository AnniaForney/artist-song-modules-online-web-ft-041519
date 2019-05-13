require 'pry'
require_relative '../config/environment'
class Song < Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end


  def artist=(artist)
    @artist = artist
  end

end
