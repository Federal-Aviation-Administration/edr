gem 'rom'
gem 'rom-sql'
Edr::Container.boot(:db) do |container| 
    init do
      require 'rom'
      require 'rom-sql'
      
      settings = container[:settings]
      config = {username: settings.ndc_username, password: settings.ndc_password}
      db = settings.database_url
      register('db.config', ROM::Configuration.new(:sql, db, config))
    end

end
