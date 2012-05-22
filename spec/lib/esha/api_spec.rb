require 'spec_helper'

describe Esha::Api do
  describe '.search' do
    it "returns an array of foods" do
      result = Esha::Api.search('beer')
      result.size.should == 25
      result.first.product.should == 'Anheuser-Busch'
    end
  end
end
