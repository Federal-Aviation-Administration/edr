module Edr

  module Repos

    class EmployeeRepo < ROM::Repository[:employees]
      include Import['container']
      struct_namespace Edr

      def query(conditions)
        employees.where(conditions)
      end

      def by_organization(org)
        employees.by_cc_cd_and_rgn_cd(cc_cd: org.cc_cd, rgn_cd: org.rgn_cd).to_a
      end

      def by_name(first: nil, last: nil)
        employees.by_name(first: first, last: last).to_a
      end

      def by_facility(fac)
        employees.by_cc_cd_and_rgn_cd(cc_cd: fac.cc_cd, rgn_cd: fac.rgn_cd).to_a
      end

    end
  end
end
