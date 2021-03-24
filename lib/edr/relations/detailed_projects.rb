module Edr

  module Relations

    class DetailedProjects < ROM::Relation[:sql]
      schema(:CWP_PROJ_COLL_EXT_VW, as: :detailed_projects, infer: true)

      def by_jcn(jcn)
        where(jcn: jcn)
      end

      def by_lid_fac(locid: nil, factype: nil)
        case  [locid,factype]
            in [String, String]
            where( locid_cd: locid.upcase, factyp_cd: factype.upcase)
            in [String,nil]
            where( locid_cd: locid.upcase)
            in [nil, String]
            where(factyp_cd: factype.upcase)
        else
          raise 'need one or both of locid and factype'
        end
      end

      def by_lead_engineer(name)
        where{ pr_exec_lead.ilike(name)}
      end


    
    end
  end
end
