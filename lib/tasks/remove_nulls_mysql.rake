task :remove_nulls_mysql => :environment do
  conn = ActiveRecord::Base.connection
  mysql = "DELETE from locations WHERE latitude is NULL;"
  tables = conn.execute(mysql).map { |r| r['locations'] }
end


