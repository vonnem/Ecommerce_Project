class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all.order("price DESC").page(params[:page]).per(50)
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def search
    if params[:keywords].present? || params[:brand] != "All Brands"
      wildcard_search = "%#{params[:keywords]}%"
      @laptops = Laptop.where("laptop_name LIKE ?", wildcard_search).page(params[:page]).per(8)

      if params[:brand] != "All Brands"
       @laptops = @laptops.where(brand: params[:brand])
      end
    else
      @laptops = Laptop.all.order("price DESC").page(params[:page]).per(50)
    end
  end
end
