# Jungle

A mini e-commerce application built with Rails 4.2.

## Final Product
!["main-page"](https://github.com/vivienfan/jungle-rails/blob/master/doc/main_page.png?raw=true)
##### All the products posted on Jungle are listed at the main page. Clients can add products into their carts if they are not sold out. 

| Sign Up | Login |
|:---:|:---:|
| !["sign_up"](https://github.com/vivienfan/jungle-rails/blob/master/doc/sign_up.png?raw=true) | !["login"](https://github.com/vivienfan/jungle-rails/blob/master/doc/login.png?raw=true) |
##### Clients can sign up or login, which allows them to review products, make credit card payments with their name and email automatically filled up.

!["product"](https://github.com/vivienfan/jungle-rails/blob/master/doc/product.png?raw=true)
##### Clients can view the details and reviews from other clients for all products. 

!["category"](https://github.com/vivienfan/jungle-rails/blob/master/doc/category.png?raw=true)
##### Clients can view products belongs to a certain category.

!["cart"](https://github.com/vivienfan/jungle-rails/blob/master/doc/cart.png?raw=true)
##### Clients can add and remove items from their cart, checkout and pay for the order. 

!["strip"](https://github.com/vivienfan/jungle-rails/blob/master/doc/strip.png?raw=true)
##### Clients can use online credit card payments to make purchases. An logged-in user would not need to fill in email for this.

| Order Details | Email Receipt |
|:---:|:---:|
| !["order"](https://github.com/vivienfan/jungle-rails/blob/master/doc/order.png?raw=true) | !["email-receipt"](https://github.com/vivienfan/jungle-rails/blob/master/doc/email-receipt.png?raw=true) |
##### After a successful purchase, an order details page will be displayed, clients will also receive an e-receipt via email.

!["admin-login"](https://github.com/vivienfan/jungle-rails/blob/master/doc/admin_login.png?raw=true)
##### Admin users of Jungle can login and make product and category changes.

| List of Categories | New Category |
|:---:|:---:|
| !["admin-category"](https://github.com/vivienfan/jungle-rails/blob/master/doc/admin_categories.png?raw=true) | !["admin-new_category"](https://github.com/vivienfan/jungle-rails/blob/master/doc/admin_new_category.png?raw=true) |
##### Admin users can view details of all categories, and create new ones.

| List of Products | New Product |
|:---:|:---:|
| !["admin-product"](https://github.com/vivienfan/jungle-rails/blob/master/doc/admin_product.png?raw=true) | !["admin-new-product"](https://github.com/vivienfan/jungle-rails/blob/master/doc/admin_new_product.png?raw=true) |
##### Admin users can view details of all products, and post new ones.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* RSpec-rails
