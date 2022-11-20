module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh
    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end
  end
end
