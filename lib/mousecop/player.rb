class Mousecop::Player
  attr_accessor :name, :id, :image, :conference

  def self.create(attributes= {})
    self.new.tap do |player|
      player.name = attributes[:name]
      player.id = attributes[:id]
      player.image = attributes[:image]
    end
  end
end
