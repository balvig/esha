require "httparty"
module Esha
  class Api
    include HTTParty

    base_uri 'api.esha.com'
    default_params apikey: # YOUR KEY HERE
    format :json

    def self.search(name)
      result = get("/foods", query: { query: name})
      result['items'].map do |r|
        Food.new(r)
      end
    end

  end
end
