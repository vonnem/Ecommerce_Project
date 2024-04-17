class ApplicationController < ActionController::Base

  before_action :initialize_session
  helper_method :cart

  def initialize_session
    session[:shopping_cart] ||= []
    session[:quantities] ||= {}
  end

  def cart
    Laptop.find(session[:shopping_cart])
  end

end
