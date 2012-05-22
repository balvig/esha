module Esha
  class Food < Api
    def initialize(attributes)
      @attributes = attributes
    end

    def nutrients
      result = self.class.get('/analysis', query: { f0: id })
      result['results'].map do |r|
        Nutrient.new(r.merge(result['items'].first))
      end
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
