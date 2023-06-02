module Openai
  class Engine < ::Rails::Engine
    isolate_namespace Openai
    config.generators.api_only = true
  end
end
