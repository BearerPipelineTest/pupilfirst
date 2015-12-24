source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

gem 'dotenv-rails', :groups => [:development, :test]

gem 'activeadmin', github: 'activeadmin' # ActiveAdmin doesn't like 4.2 at all (for the moment). Switch this to stable when available.
gem 'just-datetime-picker' # Date/Time picker support for active admin.
gem 'active_skin' # Better lookin' active admin!
gem 'attribute_normalizer', '~> 1.2.0.b' # Attribute normalization. TODO: Check to see if version lock can be removed.
gem 'carrierwave' # One uploader to rule them all.
gem 'carrierwave_backgrounder' # Backgrounder for carrierwave.
gem 'fog' # required by carrierwave to upload to S3.
gem 'coffee-rails', '~> 4.1.0'
gem 'devise_invitable'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'mini_magick' # Image processing.
gem 'nokogiri'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'sentry-raven' # Reporter for Sentry Heroku add-on.
gem 'slim'

gem 'turbolinks' # Disabled, because it is a pain in the ass.

gem 'uglifier'
gem 'rest-client' # Used to contact Fast Alerts' API.
gem 'cancancan', '~> 1.8' # Used to manage administrator types and roles in the ActiveAdmin interface.
gem 'phony_rails' # Phone number validation and normalization.

# Select2 javascript select box improvement library, using in ActiveAdmin interface.
# TODO: This gem currently serves version 3.x of select2. Version 4 (released) has breaking changes. Take care when upgrading.
gem 'select2-rails'

gem 'bootstrap-sass', '~> 3.3.3' # Official Sass port of Bootstrap.
gem 'autoprefixer-rails' # Autoprefixer for Ruby and Ruby on Rails.
gem 'simple_form', '~> 3.1.1' # Simple-form with support for Bootstrap 3.
gem 'simple_form_fancy_uploads' # simple_form custom inputs to get image/link previews with file uploads. https://github.com/apeacox/simple_form_fancy_uploads
# gem 'validate_url' # URL validation. - appears to be only supported on Rails 3
gem 'valid_url' # New url validataion gem
gem 'logstash-logger' # A better logger.

# Used for picking date and time fields in a few places.
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true
gem 'momentjs-rails', '>= 2.8.1', github: 'derekprior/momentjs-rails' # Required by datetimepicker-rails.

gem 'roadie-rails' # CSS management for e-mails.
gem 'passenger', '~> 5.0.14' # Passenger web-server.
gem 'delayed_job_active_record' # Delayed Job for deferring tasks.
gem 'delayed_job_web' # Web interface for delayed_job
gem 'seedbank' # Better organized seed data.
gem 'wicked' # Multistep form wizard for incubation
gem 'font-awesome-rails' # Icons from font-awesome!

# Let's not deal with flash messages, yeah? Tracking modified github master with early rendering fix. See link below.
# https://github.com/mobmewireless/unobtrusive_flash/commit/24e7787d16db66f7956747444433a4e47278193a
gem 'unobtrusive_flash', github: 'mobmewireless/unobtrusive_flash', branch: 'master'

gem 'friendly_id' # Slugs for links. http://norman.github.io/friendly_id

gem 'gravtastic' # Use gravatars as fallback avatars
gem 'require_all' # Easier folder require-s.

gem 'lita', require: false # Lita, Chat-ops bot.
gem 'lita-slack', require: false # Lita adapter for Slack.

gem 'gaffe' # Custom error pages. https://github.com/mirego/gaffe
gem 'google_calendar', github: 'northworld/google_calendar' # Thin wrapper over Google Calendar API.
gem 'recaptcha', require: 'recaptcha/rails' # ReCaptcha helpers for ruby apps http://github.com/ambethia/recaptcha
gem 'groupdate' # The simplest way to group temporal data. https://github.com/ankane/groupdate
gem 'sparkr' # Sparklines with Ruby. https://github.com/rrrene/sparkr
gem 'videojs_rails' # Video JS for Rails 3.1+ Asset Pipeline. https://github.com/seanbehan/videojs_rails

gem 'react-rails' # react for creating link editor in timeline builder

gem 'has_secure_token' # used to create tokens for models (eg: for Faculty). Will be included with ActiveRecord in Rails 5
gem 'week_of_month', github: 'sachin87/week-of-month' # gives a week of month as per given date. https://github.com/sachin87/week-of-month


# Rails assets!
source 'https://rails-assets.org' do
  gem 'rails-assets-pnotify' # Superb notifications library. http://sciactive.github.io/pnotify/
  gem 'rails-assets-curioussolutions-datetimepicker' # Responsive datetimepicker for timeline builder form.
  gem 'rails-assets-trix' # rich text editor from basecamp ( used for eg in the description for targets)
end

group :development do
  gem 'letter_opener' # In development, open mails sent in browser.
  gem 'bullet' # Detect N+1 queries.
  gem 'better_errors' # Better error info on the front-end.
  gem 'binding_of_caller' # For advanced better_errors features - REPL, local/instance variable inspection etc.

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'factory_girl', require: false
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker'
  gem 'capybara' # For RSpec feature tests.
  gem 'capybara-email' # Test ActionMailer and Mailer messages with Capybara
  gem 'capybara-webkit' # Headless WebKit browser, provided by Webkit (QT).
  gem 'capybara-screenshot' # Save screenshots on failure!
  gem 'database_cleaner' # Database cleaner can handle complex DB cleanup strategies for test (feature vs regular tests).
end

group :development, :test do
  gem 'rspec-rails', '~> 3.4.0' # Duh.
  gem 'coderay' # Pretty syntax highlighting on rspec failure snippets.
  gem 'pry-rails' # Pry debugger.
  gem 'webmock', require: false # Mocking web requests.
  gem 'did_you_mean' # Enough of silly spellinng mistakes ruining the day!
  gem 'quiet_assets' # Let's not see asset serving messages in the development log!
  gem 'rubocop', require: false # Ruby Style Guide.
end

group :production do
  gem 'rails_12factor'
end

gem 'sdoc', '~> 0.4.0', group: :doc

ruby '2.2.3'
