begin
  require "byebug"
rescue LoadError
end

require_relative "../lib/edr/container"

Edr::Container.finalize!
