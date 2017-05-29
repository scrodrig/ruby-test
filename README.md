# LEAVE BACKEND

This project contains the part of the Leave web app which runs on the server.
You can find the Front end  project on [GitHub](https://git.thoughtworks.net/leave/leave-ui).

## Prerequisites

### Ruby and rails
First, make sure you are running Ruby 2.4.1 and rails 5.1.1. You can check that with

        ruby -v
        rails --version

You also need a ruby version manager, get either [RVM](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).

To install the latest version of rails do

        gem install rails

### PostgreSQL

Install Postgres and create a Postgres user for the Rails app.

        createuser -U postgres -s leave-backend


## Getting Started

Set the ruby version with RVM

      rvm use ruby-2.4.1

Finally, set the gemset with RVM

      rvm gemset use leave-backend


Clone the repository

Go inside the project folder and update the dependencies

        cd leave-backend
        bundle install

Then create the database Using

        rake db:create
        rake db:setup

Run the server

        rails s

<!---
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... --->

## Dependencies
The scaffold for this project was created using

    rails new leave-backend --api --database=postgresql

We are using the [rails-api](https://github.com/rails-api/rails-api) for the server,
[Postgres](http://postgresapp.com/) for our database,
[factory_girl](https://github.com/thoughtbot/factory_girl) instead of fixtures
and [RSpec](http://rspec.info/) for testing.
