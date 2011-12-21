require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Fare
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end
