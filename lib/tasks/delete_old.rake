task :delete_old => :environment do
  conn = ActiveRecord::Base.connection
  sqlite3 = "DELETE FROM locations WHERE updated_at <= date('now','-18 hours') AND updated_at < date('now');"
  tables = conn.execute(sqlite3).map { |r| r['locations'] }
end
