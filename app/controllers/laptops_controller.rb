class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all.order("price DESC").page(params[:page]).per(50)
  end

  def show
    @laptop = Laptop.find(params[:id])
  end
end
