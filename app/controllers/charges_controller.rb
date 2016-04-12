class ChargesController < ApplicationController

  def new
    @order = current_order
  end

  def create
    @order = current_order
    @items = @order.order_items

    #Amount in cents
    amount = @order.subtotal.to_i * 100

    Stripe.api_key = ENV["stripe_api_key"]
    ENV["stripe_api_key"]

    #Create the customer in Stripe
    customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    card: params[:stripeToken]
    )

    #Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
    customer: customer.id,
    amount: amount,
    description: 'Rails Stripe customer',
    currency: 'usd'
    )

    # @items.destroy_all


  end

end
