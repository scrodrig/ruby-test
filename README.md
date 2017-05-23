# LEAVE ECUADOR BACKEND

This project contains the part of the Leave Ecuador web app which runs on the server.
You can find the Front end  project on [GitHub](https://github.com/twlabs/leave-ecuador-ui).

## Prerequisites

### RVM

First, install mpapis public key

        gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

Install RVM stable with ruby

      \curl -sSL https://get.rvm.io | bash -s stable --ruby

Install ruby version 2.4.1

      rvm install ruby-2.4.1

Create a new gemset for the project

      rvm gemset create leave-ecuador-backend

Set the ruby version with RVM

      rvm use ruby-2.4.1

Finally, set the gemset with RVM

      rvm gemset use eave-ecuador-backend

### Rails 5
First, make sure you are running Ruby 2.4.1 and rails 5.1.1. You can check that with

        ruby -v
        rails --version

To install the latest version do:

        gem install rails

### PostgreSQL

install Postgres and create a Postgres user for the Rails app.

        createuser -U postgres -s leave-ecuador-backend


## Getting Started

Go inside the project folder and update the dependencies

        cd leave-ecuador-backend
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
