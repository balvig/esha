module Esha
  class Nutrient < Api
    def initialize(attributes)
      @attributes = attributes
    end

    def name
      result = self.class.get('/nutrients').find {|n|n['id'] == @attributes['nutrient']}
      "#{result['unit']} #{result['description']}"
    end

    def food_unit
      result = self.class.get('/food-units').find {|n|n['id'] == @attributes['unit']}
      result['description']
    end

    def summary
      "#{quantity} #{food_unit} -> #{value} #{name}"
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
