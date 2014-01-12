require 'json'
require 'faraday'

class Mousecop::Client
  attr_reader :base_url
  def initialize
    @base_url = "http://collegebowl.avatarpro.biz/"
    @roster = Faraday.get(@base_url + "/players").body
  end

  def players
    JSON.parse(@roster).collect do |player|
      Mousecop::Player.create(name: player["name"],
			      id: player["id"],
			      image: player["image"])
    end
  end

  def sample
    player_response = Faraday.get(@base_url + "/player").body
    player = JSON.parse(player_response).first
    Mousecop::Player.create(name: player["name"],
			    id: player["id"],
			    image: player["image"])
  end
end
