module Edr

  class Organization < ROM::Struct


    def parent_node
         level = node_lvl_nbr 
        parent_level = "node_lvl_#{level - 1}"
        self.send parent_level
    end

  end
end
