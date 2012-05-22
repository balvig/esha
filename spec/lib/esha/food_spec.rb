require 'spec_helper'

describe Esha::Food do
  describe '.search' do
    it "returns an array of foods" do
      result = Esha::Food.search('beer')
      result.size.should == 25
      result.first.product.should == 'Anheuser-Busch'
    end
  end

  describe '#method_missing' do
    it "maps methods to attributes" do
      food = Esha::Food.new('id' => '1234', 'product' => 'Beer')
      food.id.should == '1234'
      food.product.should == 'Beer'
    end
  end

  describe '#nutrients' do
    it "returns an array of nutrients" do
      food = Esha::Food.new('id' => 'urn:uuid:a81993c5-7dfa-456e-8248-76a5206352df')
      food.nutrients.size.should == 1
      food.nutrients.first.summary.should == '1 Fluid ounce -> 9.145 kcal Calories'
    end
  end
end
