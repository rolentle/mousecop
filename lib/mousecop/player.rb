require 'json'
require 'faraday'

module Mousecop
  class Player
    attr_accessor :name, :id, :image, :conference

    def self.all
      @roster = Faraday.get(base_url + "/players").body

      JSON.parse(@roster).collect do |player|
	self.create(name: player["name"],
		    id: player["id"],
		    image: player["image"])
      end
    end

    def self.create(attributes= {})
      self.new.tap do |player|
	player.name = attributes[:name]
	player.id = attributes[:id]
	player.image = attributes[:image]
      end
    end

    def self.sample
      player_response = Faraday.get(base_url + "/player").body
      player = JSON.parse(player_response).first
      Mousecop::Player.create(name: player["name"],
			      id: player["id"],
			      image: player["image"])
    end

    def self.first
      @all ||= self.all
      @all.first
    end

    def self.base_url
      "http://collegebowl.avatarpro.biz/"
    end
  end
end
