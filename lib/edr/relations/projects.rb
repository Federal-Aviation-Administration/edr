module Edr

  module Relations

    class Projects < ROM::Relation[:sql]
      schema(:CWP_JCN_DPN_XWALK_VW, as: :projects, infer: true) 


      def by_jcn(jcn)
        
        where(jcn: jcn)
      end

      def by_lid_fac(locid: nil, factype: nil)
        case  [first,last]
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
      
    end
  end
end
