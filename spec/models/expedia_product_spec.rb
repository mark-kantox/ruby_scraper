require 'rails_helper'

RSpec.describe ExpediaProduct, type: :model do
  
  describe 'Product Attributes' do
    subject { described_class.new(
                productId: "455556556",
                title: "Sagrada Familia",
                description: "A good place",
                link: "www.sagradafamilia.com",
                historic_rankings: [{:date => Date.new(2017, 6, 6), :reviews => 100, :ranking => 7},
                                    {:date => Date.new(2017, 7, 6), :reviews => 102, :ranking => 3},
                                    {:date => Date.new(2017, 8, 6), :reviews => 105, :ranking => 6}],
                operator: "The church"      
              )
            }
    
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid with no product id" do
      subject.productId = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with no title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid with no link" do
      subject.link = nil
      expect(subject).to_not be_valid
    end 
  end
end
