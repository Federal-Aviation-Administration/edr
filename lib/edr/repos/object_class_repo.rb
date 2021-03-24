module Edr

  module Repos

    class ObjectClassRepo < ROM::Repository[:object_classes]
      include Import['container']
      struct_namespace Edr

      def query(conditions=nil)
        if conditions
          object_classes.where(conditions)
        else
          object_classes
        end
      end
    end
  end
end
