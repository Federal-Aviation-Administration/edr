module Edr

  module Relations

    class Employees < ROM::Relation[:sql]
      schema(:EIS_FAA_EMP_FIND_VW, as: :employees, infer: true)
      #schema(:LEI_FAA_EMP_FIND_VW, as: :employees, infer: true)

      def by_name(first: nil, last: nil)
        case [first,last]
            in [String, String]
            where{ (name_first.ilike first) & (name_last.ilike last)}

            in [String, nil]
            where{ name_first.ilike first }
            in [nil, String]
            where{ name_last.ilike last}
        else
          raise 'need first and last'
        end
      end

      def by_cc_cd_and_rgn_cd(cc_cd: , rgn_cd: )
        where(cc_cd: cc_cd, rgn_cd: rgn_cd).to_a
      end

      def by_facility(cc_cd: nil, rgn_cd: nil)
        where(cc_cd: cc_cd, rgn_cd: rgn_cd)
      end

    end

  end
end
