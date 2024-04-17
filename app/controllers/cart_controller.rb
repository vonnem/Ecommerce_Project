class CartController < ApplicationController

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
    laptop = Laptop.find(id)
    flash[:notice] = "- #{laptop.laptop_name} removed"
    redirect_to root_path
  end

end
