# Rename Gem for Rails 5

Based off of [Rename](https://github.com/get/Rename) which worked with Rails 3 apps.

## Installation

__Rename__ is a gem for Rails 5+ applications which renames the app. To run, simply install the gem by adding this line to your gemfile:

    gem 'rails-rename', '~> 2.0.0'

Then, run `bundle install` to install the gem.

If you want to install it manually, simply run:

    gem install rails-rename

## Usage

    rails g rename NewAppName

where `NewAppName` is the new name for your application in camelcase.
Also, you still need to change database's name in config/database.yml

## License

[MIT License](https://github.com/negativetwelve/rails-rename/blob/master/LICENSE.txt)
