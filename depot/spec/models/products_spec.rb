require 'rails_helper'
# https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
RSpec.describe Product, :type => :model do
  subject {  build(:product_1)}

  it "is valid with valid attributes" do
    
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject = Product.new(description: nil)
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject = Product.new(price: nil)
    expect(subject).to_not be_valid
  end

  describe 'is not valid without a uniqueness tittle' do
    before {create(:product_1)}

    it {expect(subject).to_not be_valid }
  end


end