module Edr

  module Repos

    class DetailedProjectRepo <  ROM::Repository[:detailed_projects]
      include Import['container']
      struct_namespace Edr

      def query(conditions)
        detailed_projects.where(conditions)
      end
      def by_jcn(jcn)
        detailed_projects.by_jcn(jcn).first
      end

      def by_lid_fac(locid: nil, factype: nil)
        detailed_projects.by_lid_fac(locid: locid, factype: factype)
      end

      


    end
  end
end
