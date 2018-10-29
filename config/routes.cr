module Wey::Routes
  include Wey::Controllers

  get "/", &HomeController.to_proc


  # start up kemal
  Kemal.config.env = ENV["KEMAL_ENV"]
  Kemal.config.port = ENV["PORT"].to_i || 3000
  Kemal.run
end