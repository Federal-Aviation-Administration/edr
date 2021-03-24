module Edr

  module Repos

    class FacilityRepo < ROM::Repository[:facilities]
      include Import['container']
      struct_namespace Edr

      def query(conditions)
        facilities.where(conditions)
      end


      def get(lid,fac)
        facilities.by_lid_fac(lid.upcase,fac.upcase).first
      end
    end
  end
end
