class Admin::DashboardController < ApplicationController
    http_basic_authenticate_with name:  ENV['ADMIN_NAME'], password: ENV['ADMIN_PASS'], only: [:index, :show, :create, :new, :destroy]
  def show
  end
end
