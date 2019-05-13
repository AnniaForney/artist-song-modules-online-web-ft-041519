require 'pry'
require_relative '../config/environment'
class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::ClassMethods
  include Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :artists

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
