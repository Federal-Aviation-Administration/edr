Edr::Container.boot(:persistence) do |app|
  start do
    config = app['db.config']
    config.auto_registration(app.root + 'lib/edr')
    register('container', ROM.container(app['db.config']))
  end
end
