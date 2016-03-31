# Rails.configuration.stripe = {
#   :publishable_key => Rails.application.secrets.publishable_key,
#   :secret_key      => Rails.application.secrets.secret_key
# }

#Rails.configuration.stripe = {
  #Stripe.publishable_key = ENV["stripe_publishable_key"]
  #Stripe.secret_key = ENV["stripe_secret_key"]
  Stripe.api_key = ENV["stripe_secret_key"]
#}

#Stripe.api_key = Rails.configuration.stripe[:stripe_secret_key]
