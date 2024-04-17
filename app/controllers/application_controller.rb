class ApplicationController < ActionController::Base

  before_action :initialize_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :cart

  def initialize_session
    session[:shopping_cart] ||= []
    session[:quantities] ||= {}
  end

  def cart
    Laptop.find(session[:shopping_cart])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :address, :province_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :address, :province_id])
  end

end
