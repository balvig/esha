require 'spec_helper'

describe Esha::Nutrient do
  describe '#name' do
    it "returns the name of the nutrient" do
      nutrient = Esha::Nutrient.new('nutrient' => 'urn:uuid:a4d01e46-5df2-4cb3-ad2c-6b438e79e5b9')
      nutrient.name.should == 'kcal Calories'
    end
  end

  describe '#food_unit' do
    it "returns the food unit of the nutrient" do
      nutrient = Esha::Nutrient.new('unit' => 'urn:uuid:20346378-1e1f-4d65-8833-6119228e8639')
      nutrient.food_unit.should == 'Fluid ounce'
    end
  end

  describe '#method_missing' do
    it "maps methods to attributes" do
      Esha::Nutrient.new('value' => '1234').value.should == '1234'
    end
  end
end
