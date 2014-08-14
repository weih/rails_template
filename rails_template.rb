run("sed -i '' '1d' Gemfile")

add_source 'http://ruby.taobao.org'

if yes?("Want Thoughtbot Bourbon + Neat?")
  gem 'bourbon'
  gem 'neat', '~> 1.5.0'
end

gem_group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes', '>= 4.0.0'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem "bower-rails", "~> 0.7.1"
  gem 'quiet_assets'
  gem 'marginalia'
end

gem_group :test do
  gem 'rspec'
end

rakefile("boot.rake") do
  <<-TASK
task :boot do
  system("rails g bower_rails:initialize")
  system("rails generate rails_footnotes:install")
end
  TASK
end

# run('bower install backbone')
