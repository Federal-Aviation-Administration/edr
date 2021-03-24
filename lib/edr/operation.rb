require 'dry/matcher/result_matcher'
require 'dry/monads'
require 'dry/monads/result'
require 'dry/monads/do/all'
module Edr

  class Operation

    include Dry::Monads[:result, :try]

    class << self

      def inherited(klass)
        klass.include Dry::Monads[:do]
        klass.include Dry::Matcher::ResultMatcher.for(:call)
      end
    end
  end
end
