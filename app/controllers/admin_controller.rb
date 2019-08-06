class AdminController < ApplicationController
  def index
    @points = Point.all
    render "points/index"
  end
end
