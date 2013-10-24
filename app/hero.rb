class Hero

  attr_accessor :name, :power, :bio

  HEROS = []
  def initialize
    HEROS << self
  end

  def self.all
    HEROS
  end
  
end
