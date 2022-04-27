class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['TESTING_USERNAME'], password: ENV['TESTING_PWORD']
  def show
  end
end
