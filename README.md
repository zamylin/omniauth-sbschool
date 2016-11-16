# OmniAuth https://sberbank-school.ru OAuth2 Strategy

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-sbschool'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-sbschool

## Usage

Request key and ExternalID

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :sbschool, ENV['SBSCHOOL_KEY'], ENV['SBSCHOOL-EXTERNALID']
end
```

You can now access https://sberbank-school.ru OAuth2 at: `/auth/sbschool`.