source "https://rubygems.org"

ruby "2.3.1"

gem "rails", "5.0.0.1"
gem "pg"

# assets
gem "autoprefixer-rails"
gem "coffee-rails"
gem "foundation-icons-sass-rails"
gem "foundation-rails", "~> 6.2.3.0"
gem "jade-rails"
gem "jquery-rails"
gem "premailer-rails"
gem "sass-rails", "~> 5.0.0", ">= 5.0.6"
gem "therubyracer", platforms: :ruby
gem "uglifier", ">= 2.7.2"

# views
gem "active_link_to"
gem "inky-rb", require: "inky"
gem "metamagic"
gem "simple_form"
gem "slim"

# all other gems
gem "active_model_serializers"
gem "decent_decoration"
gem "decent_exposure"
gem "devise"
gem "draper"
gem "flamegraph"
gem "google-analytics-rails"
gem "health_check"
gem "interactor"
gem "kaminari"
gem "memory_profiler"
gem "puma"
gem "pundit"
gem "rack-canonical-host"
gem "rack-mini-profiler", require: false
gem "responders"
gem "rollbar"
gem "seedbank"
gem "stackprof"
gem "react-rails"
gem "factory_girl_rails"
gem "faker"

# backgrounding
gem "redis", "~>3.2"
gem "sidekiq"

group :staging, :production do
  gem "newrelic_rpm"
end

group :test do
  gem "capybara"
  gem "capybara-webkit"
  gem "codeclimate-test-reporter", require: false
  gem "database_cleaner"
  gem "email_spec"
  gem "formulaic"
  gem "launchy"
  gem "rspec-its"
  gem "shoulda-matchers"
  gem "webmock", require: false
end

group :development, :test do
  gem "awesome_print"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "byebug"
  gem "coffeelint"
  gem "dotenv-rails"
  gem "jasmine", "> 2.0"
  gem "jasmine-jquery-rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
end

group :development do
  gem "bullet"
  gem "letter_opener"
  gem "rails-erd"
  gem "slim-rails"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console", "~> 2.0"
end
