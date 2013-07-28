task :remove_ny_bias => :environment do
  conn = ActiveRecord::Base.connection
  mysql = "DELETE FROM locations WHERE updated_at <= date('now','-1 day') AND updated_at < date('now') AND address LIKE '%NYC%';"
  tables = conn.execute(mysql).map { |r| r['locations'] }
end
