require 'bundler/setup'
Bundler.require(:default, :development)

require 'colorize'
require 'artii'

require_relative "../lib/CLI.rb"
require_relative "../lib/log_entry.rb"
require_relative "../lib/log_file.rb"