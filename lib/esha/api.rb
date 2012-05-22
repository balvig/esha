require "httparty"
module Esha
  class Api
    include HTTParty

    base_uri 'api.esha.com'
    format :json

    def self.key=(key)
      default_params apikey: key
    end

    def method_missing(method, *args)
      if @attributes.keys.include?(method.to_s)
        @attributes[method.to_s]
      else
        super
      end
    end

  end
end
