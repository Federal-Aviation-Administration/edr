require 'dry/system/container'
require 'dry/system/components'
require 'edr/types'

module Edr

  class Container < Dry::System::Container

    use :env, inferrer: proc { ENV.fetch('EDR_ENV') { 'development'}.to_sym}
    
    configure do |config|
      config.root = Pathname(__dir__).join('../../')
      config.name = :edr
      config.default_namespace = 'edr'

      config.auto_register = 'lib'
    end

    load_paths! "lib"

    boot(:settings, from: :system) do
      settings do
        key :database_url, Types::String.constrained(filled: true)
        key :ndc_username, Types::String.constrained(filled: true)
        key :ndc_password, Types::String.constrained(filled: true)
      end
    end
  end

end

