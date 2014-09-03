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

This is used to configure gem

```ruby
# gem initialization
Secrets::Config.configure do |config|
  config.secrets_file = 'config/secrets.yml' # 'secrets.yml' by default
end
```

This is possible structure of `secrets.yml` file

```yaml
# secrets.yml
staging:
  username: staging
  password: secret
```

Somewhere where you need to access your secrets

```ruby
# Some file where secret value is needed
require 'secrets'

Secrets.staging.username # => "staging"
Secrets.staging.password # => "secret"
```

## Contributing

1. Fork it ( https://github.com/jastkand/secrets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
