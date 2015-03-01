# Capistrano::Sunspot

Sunspot specific tasks for Capistrano.

```sh
$ cap production sunspot:reindex
```

## Important! Read before using this gem

This gem is not intended to encourage the use of the built-in version of Solr for production. However this gem can help you handle Solr on your QA/staging servers.

From Sunspot Solr Readme:
Note that using the built-in Solr instance packaged with Sunspot is great for development, but is not recommended for production. See the Sunspot
documentation for more information.

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'capistrano-sunspot', :git => 'https://github.com/mwysinski/capistrano-sunspot'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install capistrano-sunspot
```

## Usage

Add this line to your `Capfile`:

```ruby
require 'capistrano/sunspot'
```

## Contributing

1. Fork it ( https://github.com/mwysinski/capistrano-sunspot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
