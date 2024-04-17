class LaptopsController < ApplicationController
  def index
    @brands = Laptop.distinct.pluck(:brand)
    @laptops = Laptop.all.order("price DESC").page(params[:page]).per(50)

    if params[:sale].present?
      @laptops = Laptop.where(on_off_sale: true).page(params[:page]).per(50)
    end

    if params[:new].present?
      @laptops = Laptop.where("created_at >= ?", 1.hour.ago).page(params[:page]).per(50)
    end

    if params[:updated].present?
      @laptops = Laptop.where("updated_at >= ?", 1.hour.ago).page(params[:page]).per(50)
    end

  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def search
    @brands = Laptop.distinct.pluck(:brand)

    if params[:keywords].present? || params[:brand] != "All Brands"
      wildcard_search = "%#{params[:keywords]}%"
      @laptops = Laptop.where("laptop_name LIKE ?", wildcard_search).page(params[:page]).per(16)

      if params[:brand] != "All Brands"
       @laptops = @laptops.where(brand: params[:brand])
      end
    else
      @laptops = Laptop.all.order("price DESC").page(params[:page]).per(50)
    end
  end
end
