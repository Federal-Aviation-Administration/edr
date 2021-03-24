require 'edr/cli/commands/core'
require 'edr/import'
require 'edr/parts/facility'


module Edr

  module CLI

    module Template

      class All < Commands::Core

        include Import['operations.project_information']

        desc 'update asciidoc attributes'
        argument :jcn, required: true, desc: 'The JCN of the project'

        def call(jcn: )
        #  proj = detailed_project_repo.by_jcn(jcn)
        #  facility = facility_repo.get(proj.locid_cd, proj.factyp_cd)
        #  org = organization_repo.by_facility(facility)
         # require 'pry'; binding.pry
          result = project_information.(jcn: jcn)
          if result.success?
            atts = result.value!
            puts render_view('attributes', project: atts[:project], facility: atts[:facility]).to_s
            puts "*" * 20
            puts "contacts\n" 
            puts "*" * 20
            #puts render_view('contacts', organization: org).to_s
            puts render_view('contacts', organization: atts[:organization]).to_s
            puts "\n\n"
            puts "*" * 20
            puts render_view('tom', organization: atts[:tom_organization])
          else
            puts result.failure
          end
        end
      end
    end
  end
end

