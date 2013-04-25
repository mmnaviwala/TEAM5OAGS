source 'https://rubygems.org'

#rails gem version 3.2.13
#bootstrap gems for CSS
#bcrypt for encrypting passwords
gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.1'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'jquery-rails'
gem 'bcrypt-ruby'


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

#This gem will be used for the database on heroku
group :production do
  gem 'pg'
end

#During development, this gem for the database will be used
group :development do
  gem 'sqlite3'
  gem 'annotate'
end


