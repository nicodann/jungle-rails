require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'Saves with all four fields set' do
      @category = Category.new
      @complete_product = Product.create!(name: 1, price: 10, quantity: 5, category: @category )
      expect(@complete_product).to be_valid
    end
    it 'Throws a validation error when no name is given' do
      @category = Category.new
      @no_name = Product.create(name: nil, price: 10, quantity: 5, category: @category)
      expect(@no_name.errors.full_messages).to include("Name can\'t be blank")
    end
    it 'Throws a validation error when no price is given' do
    @category = Category.new
      @no_price = Product.create(name: 'name', price: nil, quantity: 5, category: @category)
      expect(@no_price.errors.full_messages).to include("Price can\'t be blank")
    end
    it 'Throws a validation error when no quantity is given' do
    @category = Category.new
      @no_quantity = Product.create(name: 'name', price: 10, quantity: nil, category: @category)
      expect(@no_quantity.errors.full_messages).to include("Quantity can\'t be blank")
    end
    it 'Throws a validation error when no category is given' do
      @no_category = Product.create(name: 'name', price: 10, quantity: 5, category: nil)
      expect(@no_category.errors.full_messages).to include("Category can\'t be blank") 
    end
  end
end
