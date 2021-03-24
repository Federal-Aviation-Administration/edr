module Edr

  module Repos

    class ProjectRepo < ROM::Repository[:projects]
      include Import['container']
      struct_namespace Edr

      def query(conditions)
        projects.where(conditions)
      end


      def by_jcn(jcn)
        projects.by_jcn(jcn).first
      end

      def by_lid_fac(locid: nil, factype: nil)
        projects.by_lid_fac(locid: lid, factype: factype).to_a
      end

    end
  end
end
