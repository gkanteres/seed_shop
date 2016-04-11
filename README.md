# README

## Description
This is an individual project for the Epicodus Ruby on Rails class.
It is a basic e-commerce site with user authorization, shopping cart, and payment processing via the Stripe API.

## Installation

`bundle install`
`rake db:create`
`rake db:migrate`
`rake db:seed`
then:
`bundle exec figaro install`
...which will create **config/application.yml**.
in the **application.yml** file, define your Stripe API keys:
```
stripe_api_key: "sk_test_##########################"
stripe_publishable_key: "pk_test_##########################"
```
'rails server'
visit **localhost:3000**

## Author
Gregory Kanteres

## License
MIT License
