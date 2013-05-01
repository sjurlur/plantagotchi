source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'

gem 'aws-sdk'
gem 'rabl'
gem 'paperclip'
gem 'dynamic_form'
gem 'bootstrap-sass'
gem "highcharts-rails", "~> 2.3.0"
gem 'sass-rails', git: 'https://github.com/rails/sass-rails.git', branch: '3-2-stable'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group:production, :staging do
	gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', git: 'https://github.com/rails/sass-rails.git', branch: '3-2-stable'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails' 
# faen!

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :test, :development do
	gem 'pg'
	gem 'rspec-rails', '~> 2.5'

end
group :test do
	gem 'cucumber-rails-training-wheels'
	gem 'capybara'
	gem 'database_cleaner'
	#gem 'factory_girl'
	gem 'factory_girl_rails', '~> 3.0'

end

