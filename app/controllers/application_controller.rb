class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :set_categories_and_tags

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

private

  def set_categories_and_tags
    @categories = Category.all
    @tags = Tag.all
  end

end
