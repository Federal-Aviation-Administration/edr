module Edr

  module Relations

    class Facilities < ROM::Relation[:sql]
      schema(:FSEP_DAILY_VW, as: :facilities, infer: true) do
        attribute :factyp_cd, Types::String.meta(alias: :factype)
        attribute :locid_cd, Types::String.meta(alias: :locid)
        attribute :cc_cd, Types::String.meta(alias: :cost_code)

        associations do
          belongs_to :organization, as: :owner, view: :owned_facility, override: true
        end
      end

      def by_state(state)
        where(st_abbrv: state)
      end

      def by_lid_fac(lid,fac)
        where(locid_cd: lid, factyp_cd: fac)
      end

      def with_org
        assoc(:organization)
      end
    end

  end
end
