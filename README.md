# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. My particular fork has had the following features/bugfixes added:

- Styling and conditional code for "sold out" product badge
- The ability for admins to add new product categories
- New user registration and user authentication
- Improved order summaries
- Support for e-mailed receipts
- Basic authentication for admin-specific tasks
- Removed ability to check out with empty cart
- Added product review and ratings feature


## Setup

1. Fork and clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Set values for ADMIN_NAME and ADMIN_PASS in .env (for basic auth)
10. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screencaps

!["Logged in view of product page"](https://github.com/vanastassiou/jungle-rails/blob/master/docs/logged-in.png)
!["Logged out view of product page.](https://github.com/vanastassiou/jungle-rails/blob/master/docs/logged-out.png)
!["Product dislay page with sold out badge."](https://github.com/vanastassiou/jungle-rails/blob/master/docs/soldout.png)
