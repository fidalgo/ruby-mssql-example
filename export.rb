# encoding: UTF-8
#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
Bundler.require(:db)
env = 'development'
ActiveRecord::Base.establish_connection YAML.load_file( File.join(File.dirname(__FILE__),'config','database.yml'))[env]
$: << File.join(File.dirname(__FILE__),'app','models' )
$: << File.join(File.dirname(__FILE__),'lib' )
require 'client'

puts "Clients in database:  #{Client.count}"
