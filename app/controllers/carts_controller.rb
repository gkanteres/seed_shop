class CartsController < ApplicationController

  def show
    @order = current_order
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_items = @order.order_items
    @order_items.each do |item|
      item.destroy
    end
    # redirect_to cart_path(@cart)      ::: breaks responsive cart
    # render :show                      ::: breaks responsive cart
    # @order_items = @order.order_items ::: no effect
    # @order = current_order            ::: no effect
  end
end
