# Secrets

Makes it easy to load config from `secrets.yml`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'secrets', github: 'jastkand/secrets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install secrets

## Usage

    # secrets.yml
    staging:
      username: staging
      password: secret


    # Some file where secret value is needed
    require 'secrets'

    Secrets.staging.username # => staging
    Secrets.staging.password # => secret

## Contributing

1. Fork it ( https://github.com/jastkand/secrets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
