class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all.order("price DESC")
  end

  def show
    @laptop = Laptop.find(params[:id])
  end
end
