class CartsController < ApplicationController

  def show
    @categories = Category.all
    @tags = Tag.all
    @order_items = current_order.order_items
    @order = current_order
  end

end
