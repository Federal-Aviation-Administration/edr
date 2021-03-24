module Edr

  module Relations

    class ObjectClasses < ROM::Relation[:sql]
      schema(:OBJECT_CLASS_VW, as: :object_classes, infer: true)
    end
  end
end
