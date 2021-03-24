require 'dry/view'

require 'erb'

module Edr

  class View < Dry::View

    config.paths = Edr::Container.root.join('templates')
    config.layout = 'application'
    config.default_format = 'adoc'
  end
end
