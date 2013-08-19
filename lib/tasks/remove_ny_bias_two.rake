task :remove_ny_bias => :environment do
  conn = ActiveRecord::Base.connection
  mysql = "DELETE FROM locations WHERE updated_at <= date('now','-2 hours') AND updated_at < date('now') AND address LIKE '%New York%';"
  tables = conn.execute(mysql).map { |r| r['locations'] }
end
