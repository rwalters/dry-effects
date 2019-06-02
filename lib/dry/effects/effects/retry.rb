require 'dry/effects/effect'

module Dry
  module Effects
    module Effects
      class Retry < ::Module
        def initialize(_)
          module_eval do
            define_method(:repeat) do |identifier|
              effect = Effect.new(type: :retry, name: :repeat, identifier: identifier)
              ::Dry::Effects.yield(effect)
            end
          end
        end
      end
    end
  end
end