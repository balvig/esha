require "httparty"
require 'active_support/all'
module Esha
  class Nutrition
    include HTTParty

    base_uri 'api.esha.com'
    default_params apikey: 'ekkyhde3bes6m86sv396uj8y'
    format :json

    def initialize(name)
      @name = name
    end

    def go
      self.class.get("/foods", query: { query: @name})
    end
  end
end
