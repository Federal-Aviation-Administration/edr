require 'dry/view'


module Edr

  module Views#

    class Contacts < Edr::View


      config.template = 'attributes/contacts'

      expose :organization
    end


  end


end
