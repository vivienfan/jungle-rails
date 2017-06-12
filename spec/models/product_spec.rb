require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before :each do
      @category = Category.new name: "category"
      @product_param = {
        name: "name",
        description: "description",
        category: @category,
        quantity: 10,
        image: nil,
        price: 100
      }
      @product = Product.new @product_param
    end

    it 'should have a name' do
      @product.name.should be_present
    end

    it 'should have a price' do
      @product.price.should be_present
    end

    it 'should have quantity' do
      @product.quantity.should be_present
    end

    it 'should have a category' do
      @product.category.should be_present
    end
  end
end