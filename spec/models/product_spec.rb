require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before :each do
      @name = 'name'
      @description = 'description'
      @category = Category.new
      @quantity = 10
      @image = nil
      @price = 100
    end

    it 'should have a name' do
      product = Product.new
      product.description = @description
      product.category = @category
      product.quantity = @quantity
      product.image = @image
      product.price = @price
      product.save

      expect(product.errors.full_messages[0].downcase).to include('name')
    end

    it 'should have a price' do
      product = Product.new
      product.name = @name
      product.description = @description
      product.category = @category
      product.quantity = @quantity
      product.image = @image
      product.save

      expect(product.errors.full_messages[0].downcase).to include('price')
    end

    it 'should have quantity' do
      product = Product.new
      product.name = @name
      product.description = @description
      product.category = @category
      product.image = @image
      product.price = @price
      product.save

      expect(product.errors.full_messages[0].downcase).to include('quantity')
    end

    it 'should have a category' do
      product = Product.new
      product.name = @name
      product.description = @description
      product.quantity = @quantity
      product.image = @image
      product.price = @price
      product.save

      expect(product.errors.full_messages[0].downcase).to include('category')
    end
  end
end