source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.2'
# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end

group :development do
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring'
	#
	gem 'better_errors'
	gem 'binding_of_caller'
	#
	gem 'byebug'
end

group :production do
	gem 'pg'
	# Use unicorn as the app server
	gem 'unicorn'
	# Use rails_12factor gem to enable all platform features, as advised from Heroku
	gem 'rails_12factor'

end
	
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Bootstrap for sass
gem 'bootstrap-sass'
# Along with bootstrap-sass, use Autoprefixer with Bootstrap to add browser vendor prefixed automatically
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use Faker to populate fake database
	gem 'faker', '~> 1.4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery ui
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use paperclip to upload, store images and aws-sdk to store them on Amazon
gem 'paperclip', "~> 4.1"
gem 'aws-sdk'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use TinyMCE to enable richer text editing experience
gem 'tinymce-rails'
