# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "gary"
  gem.homepage = "http://github.com/brettshollenberger/gary"
  gem.license = "MIT"
  gem.summary = %Q{Garylang interpreter}
  gem.description = %Q{The Garylang interpreter executes Garylang programs. What to do?}
  gem.email = "brettcassette@gmail.com"
  gem.authors = ["Brett Cassette"]
  gem.executables = %w(gary)
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
