task :remove_nulls => :environment do
  conn = ActiveRecord::Base.connection
  sqlite3 = "DELETE from locations WHERE latitude is NULL;"
  tables = conn.execute(sqlite3).map { |r| r['locations'] }
end


