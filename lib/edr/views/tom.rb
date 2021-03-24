require 'dry/view'

module Edr 
  module Views

    class Tom < Edr::View

      config.template = 'attributes/tom'

      expose :organization

    end

  end

end