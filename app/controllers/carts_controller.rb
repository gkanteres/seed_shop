class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    @order = current_order
  end

  def destroy
    @order = current_order
    @order_items = @order.order_items
    @order_items.each do |item|
      item.destroy
    end
    # @order_items = @order.order_items
  end

end
