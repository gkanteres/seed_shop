class ChargesController < ApplicationController

  def new
  end

  def create
    #Amount in cents
    amount = params[:stripeAmount].to_i * 100

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
  end

end
