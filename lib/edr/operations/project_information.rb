require 'edr/functions'
module Edr

  module Operations


    class ProjectInformation < Operation
      include Edr::Functions

      include Import['repos.detailed_project_repo']
      include Import['repos.facility_repo']
      include Import['repos.organization_repo']
      include Import['repos.employee_repo']

      def call(jcn:)
        project = yield find_project(jcn)
        facility = yield find_facility(project.locid_cd, project.factyp_cd)
        organization = yield find_organization(facility)
        tom_organization = yield find_tom_organization(organization)
        employees = yield find_employees(organization)
        Success ({ project: project, facility: facility, organization: organization, 
                   tom_organization: tom_organization, employees: employees})
      end

      def find_project(jcn)
        result = detailed_project_repo.by_jcn(jcn)
        if result
          Success(result)
        else
          Failure("no project by jcn: #{jcn}")
        end
      end

      def find_facility(lid, fac)
        result =  facility_repo.get(lid, fac) 
        if result
          Success(result)
        else
          Failure("no facility found with lid #{lid} factype #{fac}")
        end
      end

      def find_organization(fac)
        result = organization_repo.by_facility(fac)
        if result
          Success(result)
        else
          Failure("no organization found with facility #{fac}")
        end
      end

      def find_tom_organization(org)
        parent_node = org.parent_node
        result = organization_repo.by_node(parent_node)
        if result
          Success(result)
        else
          Failure("no organization parent found for #{org}")
        end
      end

      def find_employees(org)
        result = employee_repo.by_organization(org)
        if result
          Success(result)
        else
          Failure("no employess found by org #{org}")
        end
      end

    end
  end
end
