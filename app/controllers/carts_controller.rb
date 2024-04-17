class CartsController < ApplicationController

  def create
    logger.debug("Adding #{params[:id]}")
    id = params[:id].to_i
    session[:shopping_cart] << id unless session[:shopping_cart].include?(id)
    laptop = Laptop.find(id)
    flash[:notice] = "+ #{laptop.laptop_name} added to cart."
    redirect_to root_path
  end

  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    # session[:quantities].delete(id.to_s) if session[:quantities][id.to_s]

    if session[:quantities][id.to_s]
      session[:quantities].delete(id.to_s)
    end

    laptop = Laptop.find(id)
    flash[:notice] = "- #{laptop.laptop_name} removed from cart."
    redirect_to root_path
  end

  def update_quantity
    laptop_id = params[:id].to_i
    quantity = params[:quantity].to_i

    session[:quantities][laptop_id] = quantity
    redirect_to carts_path
  end

  def index
    @cart_items = []
    session[:shopping_cart].each do |item_id|
      laptop = Laptop.find_by(id: item_id)
      @cart_items << laptop if laptop
    end
  end

end
