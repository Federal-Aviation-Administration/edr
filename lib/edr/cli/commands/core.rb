require 'dry/cli/command'

module Edr

  module CLI

    module Commands

      class Core < Dry::CLI::Command


        def render_view(identifier, with:{}, **input)
          container["views.#{identifier}"].(
            **input).to_s
        end

        def container
          Edr::Container
        end
      end
    end
  end
end
