module Edr

  class Project < ROM::Struct

    def reimbursable?
      proj_class == '3'
    end

    def accounting_code(work_code: '4400A.WB4060', obj_class: 260690)
      "#{proj_nbr}/#{work_code}/#{obj_class}/#{proj_org}/date/#{proj_fund}/#{proj_bli}"
      
    end

    def accounting_code_travel
      "#{proj_nbr}/#{work_code}/#{obj_class}/#{proj_cc_cd}/date/#{proj_fund}/#{proj_bli}"
    end
  end
end
