module Edr

  class Facility < ROM::Struct

    def lid_fac
      "#{locid}_#{factype}"
    end
  end
end
