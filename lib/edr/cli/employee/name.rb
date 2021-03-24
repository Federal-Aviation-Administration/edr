require 'edr/cli/commands/core'
require 'edr/import'
require 'tty-prompt'

require 'pry'


module Edr

  module CLI

    module Employee

      class Name < Commands::Core


        include Import['repos.employee_repo']

        desc 'Return employee by first and last name'

        argument :last_name, required: true, desc: 'The last name of user'
        argument :first_name,  desc: 'The first name of user'

        def call(last_name: , first_name: nil  )
          result = employee_repo.by_name(first: first_name, last: last_name)
          if result
            result_array = result.to_a
            choices = result_array.map.with_index{ |r,idx| [idx+1, r.full_name] }
            
            prompt = TTY::Prompt.new
            answer = prompt.select('Employee?: ', choices)
            employee = result_array[answer-1]
            puts employee.to_h
          end
        end
      end
    end
  end
end
