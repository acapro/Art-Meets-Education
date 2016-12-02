class SetupHstore < ActiveRecord::Migration
  if Rails.env.production?
    def self.up
      execute "CREATE EXTENSION hstore"
    end

    def self.down
      execute "DROP EXTENSION hstore"
    end
  end
end
