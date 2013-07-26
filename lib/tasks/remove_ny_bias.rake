task :remove_ny_bias_dev => :environment do
  conn = ActiveRecord::Base.connection
  mysql = "DELETE *, DATE_FORMAT(updated_at, '%m/%d/%Y') FROM locations WHERE updated_at <= DATE_SUB(SYSDATE(), INTERVAL 2 DAY) AND address LIKE '%NYC%';"
  tables = conn.execute(mysql).map { |r| r['locations'] }
end
