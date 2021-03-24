module Edr

  module Repos

    class OrganizationRepo < ROM::Repository[:organizations]
      include Import['container']
      struct_namespace Edr

      def query(conditions = nil)
        conditions ?  organizations.where(conditions) : organizations
      end

      def organization_with_employees
        organizations.combine(:employees)
      end

      def by_facility(fac)
        organizations.by_facility(fac).first
      end

      def by_node(n)
        organizations.by_node(n).first
      end

    end
  end
end
