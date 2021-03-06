require_relative './config/environment'

require 'config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise "Migrations are pending. Run 'rake db:migrate' to migrate."
end

use Rack::MethodOverride
run ApplicationController