# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
  end

use Rack::JSONBodyParser

run Rails.application
Rails.application.load_server
