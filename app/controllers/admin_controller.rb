class AdminController < ApplicationController
  def index
    @points = Point.order(:name).page(params[:page])
    render "points/index"
  end
end
