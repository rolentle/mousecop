
module Mousecop
  class Player
    attr_accessor :name, :id, :image, :conference

    def self.all
      data = PlayerSource.new.fetch_data('/players')
      data.collect do |player|
	self.create(name: player["name"],
		    id: player["id"],
		    image: player["image"])
      end
    end

    def self.sample
      player = PlayerSource.new.fetch_data('/player').first
      self.create(name: player["name"], id: player["id"], image: player["image"])
    end

    def self.first
      @all ||= self.all
      @all.first
    end

    def self.create(attributes= {})
      self.new.tap do |player|
	player.name = attributes[:name]
	player.id = attributes[:id]
	player.image = attributes[:image]
      end
    end

  end
end
