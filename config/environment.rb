# Load the Rails application.
require_relative 'application'
require 'dotenv'
Dotenv.load
require 'httparty'

# Initialize the Rails application.
Rails.application.initialize!
