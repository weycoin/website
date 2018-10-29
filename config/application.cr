require "kemal"
require "dotenv"

require "./initializers/env.cr"
require "./initializers/**"
require "../app/**"

module Wey::Application
  Kemal.config do |config|
    config.public_folder = "./app/assets/"
  end
end