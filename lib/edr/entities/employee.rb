module Edr

  class Employee < ROM::Struct

    def full_name
      [name_first, name_last].compact.join(" ")
    end

  end
end
