class Team

  attr_accessor :name, :motto, :hero

  TEAM = []
  def initialize
    TEAM << self
    self.hero = []
  end

  def self.all
    TEAM
  end
  
end
