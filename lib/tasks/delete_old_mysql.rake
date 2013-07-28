task :delete_old_mysql => :environment do
  conn = ActiveRecord::Base.connection
  mysql = "SELECT *, DATE_FORMAT(updated_at, '%m/%d/%Y') FROM locations WHERE updated_at <= DATE_SUB(SYSDATE(), INTERVAL 2 DAY);"
  tables = conn.execute(mysql).map { |r| r['locations'] }
end


