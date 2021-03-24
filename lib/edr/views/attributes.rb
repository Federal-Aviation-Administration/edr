require 'dry/view'
module Edr
  module Views
    class Attributes < Edr::View

      include Import['repos.project_repo']

      config.template = 'attributes/main'

      expose :project, :facility

     


    end 
  end

end
