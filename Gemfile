source "https://rubygems.org"

gem "capistrano"
if ENV['CAP_SOLR_DEV']
  gem "capistrano-solr", :path => "../capistrano-solr"
else
  gem "capistrano-solr", :git => "https://github.com/rainkinz/capistrano-solr"
end

gem 'pry-byebug'
