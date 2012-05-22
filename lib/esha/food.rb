module Esha
  class Food < Api

    def self.search(name)
      result = get("/foods", query: { query: name})
      result['items'].map do |r|
        new(r)
      end
    end

    def initialize(attributes)
      @attributes = attributes
    end

    def nutrients
      result = self.class.get('/analysis', query: { f0: id })
      result['results'].map do |r|
        Nutrient.new(r.merge(result['items'].first))
      end
    end

  end
end
