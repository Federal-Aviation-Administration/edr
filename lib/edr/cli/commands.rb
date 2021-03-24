require 'dry/cli/registry'
require 'edr/cli/employee/name'
require 'edr/cli/template/all'


module Edr

  module CLI

    module Commands

      extend Dry::CLI::Registry

      register 'employee' do |employee| 

        employee.register 'name', Employee::Name, aliases: %w[n]
      end
      register 'template' do |template|
        template.register 'all', Template::All

      end

    end
  end
end  
