require 'singleton'
     
class NullPiece
  include Singleton
  attr_reader :value
  def initialize
    @value = "| |"
  end
end
