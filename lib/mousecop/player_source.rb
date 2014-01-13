require 'json'
require 'faraday'

module Mousecop
  class PlayerSource
    def base_url
      "http://collegebowl.avatarpro.biz/"
    end

    def fetch_data(path)
      JSON.parse(Faraday.get(base_url + path).body)
    end
  end
end
