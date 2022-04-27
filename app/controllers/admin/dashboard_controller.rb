class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['TESTING_USERNAME'], password: ENV['TESTING_PWORD']
  def show
    @product_count = Product.count
    @category_count = Category.count
  end
end
