require 'dry/view'
module Edr 
  module Parts

  class Facility < Dry::View::Part

    def facility_location
      return 'TODO' unless facility && facility.loc_name
      "#{facility.loc_name}, #{facility.st_abbrv}"
    end
  end
end
end 
