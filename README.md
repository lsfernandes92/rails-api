# rails-api

This repo introduce an example of WebService endpoint in RoR. Given and endpoint(http://54.152.221.29/images.json) of ten photos, the project consume and generate different photo formats for each one(small, medium and large).

The main goal here is to resolve a suggested exercise from a job opportunity. Also, I am currently studying **Ruby** and that's why the reason of the chosen language.

Things you may want to cover:

## Prerequisites

### Install Ruby and Rails
Before we begin, make sure you have ruby version >=2.2.2 and rails version 5.

`$ ruby -v # ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin16]`

`$ rails -v # Rails 5.0.1`

### Installing MongoDB
Installing MongoDB varies by platform. If you are using OS-X installing MongoDB is pretty easy. Simply perform the following steps:

* With homebrew installed, run `brew install mongodb`. Don't have homebrew installed? Check out our article on how to install it at https://richonrails.com/articles/setting-up-ruby-on-rails-os-x-10-10-yosemite.
* Install brew services with `brew tap homebrew/services`. Homebrew services allow you to easily add services like MongoDB to startup.
* Run the command `brew services start mongodb`
* Visit http://localhost:27017 to verify installation. If MongoDB has been installed correctly you will see the message It looks like you are trying to access MongoDB over HTTP on the native driver port. at the top of the browser window.

### Bundler
Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.

Bundler is an exit from dependency hell, and ensures that the gems you need are present in development, staging, and production. Starting work on a project is as simple as bundle install.

After installing ruby tap `gem install bundler`

## Rails Application Setup

* Clone the repo
  * `$ git clone https://github.com/lsfernandes92/rails-api.git`
* Enter in the folder
  * `cd rails-api/`
* Install gems by running
  * `$ bundle install`
* Access http://localhost:3000/images and you should see the given JSON response

## How to run the test suite
The tests are build with RSpec and since you bundle after clone the project, it means that it is ready to go.

They are found in **rails-api/spec** folder.

Follow the instructions to run:
* Enter in the folder
  * `cd rails-api/`
* Let's execute the specs by running:
  * `bundle exec rspec --format doc`

You should get something like that if all good.
```
ImagesController
  GET #index
    returns http success
    json should return 10 items
    html should show the page
    returns data of an single student

Finished in 1.51 seconds (files took 3.16 seconds to load)
4 examples, 0 failures
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
