# Backend administration with ActiveAdmin

In this section, we will discuss ActiveAdmin, a powerful gem that helps you quickly build an administration site with
full-featured design, functionality, ...

### Overview

Active Admin is a Ruby on Rails framework for creating elegant backends for website administration.

- Homepage: [https://github.com/activeadmin/activeadmin](https://github.com/activeadmin/activeadmin)
- Wiki page: [https://github.com/activeadmin/activeadmin/wiki](https://github.com/activeadmin/activeadmin/wiki)
- Documentation page: [https://github.com/activeadmin/activeadmin/tree/master/docs](https://github.com/activeadmin/activeadmin/tree/master/docs)

There are quite many things to learn even with only ActiveAdmin, we will only cover the basic part of it.

### Installations

Active Admin is a Ruby Gem.

        ruby
        gem 'activeadmin'

More accurately, it's a [Rails Engine](http://guides.rubyonrails.org/engines.html)
that can be injected into your existing Ruby on Rails application.

#### Setting up Active Admin

After installing the gem, you need to run the generator. By default we use Devise, and
the generator creates an `AdminUser` model. If you want to create a different model
(or modify an existing one for use with Devise) you can pass it as an argument.
If you want to skip Devise configuration entirely, you can pass `--skip-users`.

        sh
        rails g active_admin:install              # creates the AdminUser class
        rails g active_admin:install User         # creates / edits the class for use with Devise
        rails g active_admin:install --skip-users # skips Devise install

The generator adds these core files, among others:

        app/admin/dashboard.rb
        app/assets/javascripts/active_admin.js.coffee
        app/assets/stylesheets/active_admin.css.scss
        config/initializers/active_admin.rb

Now, migrate your database and start the server:

        sh
        rake db:migrate
        rails server

Visit `http://localhost:3000/admin` and log in as the default user:

* __User__: admin@example.com
* __Password__: password

Voila! You're on your brand new Active Admin dashboard.

To register an existing model with Active Admin:

        sh
        rails generate active_admin:resource MyModel

This creates a file at `app/admin/my_model.rb` to set up the UI; refresh your browser to see it.

### Create our administration pages

Assume that we have the models ** Customer ** and ** Order **, now we are going to create the admin pages for these models.

Run:
        > rails generate active_admin:resource Customer
        > rails generate active_admin:resource Order

Refresh the browser and see the result!

### Customizations

If you want to customize the form and pages, you can read the documentation of ActiveAdmin as:
        https://github.com/activeadmin/activeadmin/tree/master/docs

Or go directly this page:
        https://github.com/activeadmin/activeadmin/blob/master/docs/10-custom-pages.md

** Good luck and have fun with decorations! **