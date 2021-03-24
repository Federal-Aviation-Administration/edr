module Edr

  module Functions

    def render_view(identifier, with:{}, **input)
      renderer = container["views.#{identifier}"]
      renderer.(**input).to_s

      #container["views.#{identifier}"].(**input).to_s
    end

    def container
      Edr::Container
    end

  end
end
