run("sed -i '' '1d' Gemfile")

add_source 'http://ruby.taobao.org'

gem 'bourbon'
gem 'neat', '~> 1.5.0'

gem_group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes', '>= 4.0.0'
end

run('bower install backbone')

# generate('rails_footnotes:install')
# 
# run("bunlde exec rails generate rails_footnotes:install")
