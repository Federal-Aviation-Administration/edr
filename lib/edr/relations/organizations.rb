module Edr

  module Relations

    class Organizations < ROM::Relation[:sql]
      schema(:DELPHI_ORG_HRCHY_VW, as: :organizations, infer: true, ) do
        attribute :node_descr, Types::String.meta(alias: :description)
        associations do
          has_many :projects
          has_many :EIS_FAA_EMP_FIND_VW, as: :employees, relation: :employees, foreign_key: :cc_cd
          has_many :FSEP_DAILY, as: :facilities, relation: :facilities, foreign_key: :cc_cd
        end
      end

      def with_employees
        join(:employees)
      end

      def with_facilities
        join(:facilities)
      end

      def by_facility(fac)
        where(cc_cd: fac.cc_cd, rgn_cd: fac.rgn_cd)
      end

      def by_node(n)
        where(node: n)
      end


    end
  end
end
