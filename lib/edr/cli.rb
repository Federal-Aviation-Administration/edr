require 'dry/cli'
require 'edr/cli/commands'

module Edr

  module CLI

    class Application < Dry::CLI

      def self.start
        new.()
      end

      def self.new(commands = CLI::Commands)
        super
      end
    end
  end
end
